#include "ros/ros.h"
#include "std_msgs/String.h"
#include "sstream"
#include "dobot/SetCmdTimeout.h"
#include "dobot/SetQueuedCmdClear.h"
#include "dobot/SetQueuedCmdStartExec.h"
#include "dobot/SetQueuedCmdForceStopExec.h"
#include "dobot/GetDeviceVersion.h"


#include <termios.h>
#include <signal.h>
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/poll.h>
#include <boost/thread/thread.hpp>

#include "dobot/SetEndEffectorParams.h"
#include "dobot/SetPTPJointParams.h"
#include "dobot/SetPTPCoordinateParams.h"
#include "dobot/SetPTPJumpParams.h"
#include "dobot/SetPTPCommonParams.h"
#include "dobot/SetPTPCmd.h"
#include "dobot/SetHOMECmd.h"
#include "dobot/SetEndEffectorSuctionCup.h"
#include "dobot/SetWAITCmd.h"
#include "dobot/GetPose.h"
#include "dobot/GetCtrl_msg.h"
#include "dobot/SetHHTTrigOutputEnabled.h"
#include "dobot/GetHHTTrigOutputEnabled.h"
#include "dobot/GetHHTTrigOutput.h"

//设置相应按键的ASCII码值
#define KEYCODE_0 0x30 
#define KEYCODE_1 0x31
#define KEYCODE_2 0x32
#define KEYCODE_3 0x33
#define KEYCODE_4 0x34

int kfd = 0;
struct termios cooked, raw;//struct termios 结构用来持有所有的当前线路设置, 给终端 设备一个特定端口. 
void StopQueueCmd(){
	ros::NodeHandle n;
	ros::ServiceClient client;
    client = n.serviceClient<dobot::SetQueuedCmdForceStopExec>("/DobotServer/SetQueuedCmdForceStopExec");
    dobot::SetQueuedCmdForceStopExec srv;
    client.call(srv);
}
void ClearQueueCmd(){
	// Clear the command queue
	ros::NodeHandle n;
	ros::ServiceClient client;
    client = n.serviceClient<dobot::SetQueuedCmdClear>("/DobotServer/SetQueuedCmdClear");
    dobot::SetQueuedCmdClear srv2;
    client.call(srv2);
}

void MySigintHandler(int sig)
{
	//这里主要进行退出前的数据保存、内存清理、告知其他节点等工作
	ROS_INFO("shutting down!");
    StopQueueCmd();
	ClearQueueCmd();
	ros::shutdown();
}
int SetUp(){
	ros::NodeHandle n;
	ros::ServiceClient client;
	// SetCmdTimeout
    client = n.serviceClient<dobot::SetCmdTimeout>("/DobotServer/SetCmdTimeout");
    dobot::SetCmdTimeout srv1;
    srv1.request.timeout = 3000;
    if (client.call(srv1) == false) {
        ROS_ERROR("Failed to call SetCmdTimeout. Maybe DobotServer isn't started yet!");
        return -1;
    }
    // Clear the command queue
    client = n.serviceClient<dobot::SetQueuedCmdClear>("/DobotServer/SetQueuedCmdClear");
    dobot::SetQueuedCmdClear srv2;
    client.call(srv2);
	
   

    // Start running the command queue
    client = n.serviceClient<dobot::SetQueuedCmdStartExec>("/DobotServer/SetQueuedCmdStartExec");
    dobot::SetQueuedCmdStartExec srv3;
    client.call(srv3);

    // Get device version information
    client = n.serviceClient<dobot::GetDeviceVersion>("/DobotServer/GetDeviceVersion");
    dobot::GetDeviceVersion srv4;
    client.call(srv4);
    if (srv4.response.result == 0) {
        ROS_INFO("Device version:%d.%d.%d", srv4.response.majorVersion, srv4.response.minorVersion, srv4.response.revision);
   	} else {
        ROS_ERROR("Failed to get device version information!");
    }
    
    // Set HHT Trigger Output Enabled 
   // do {
        client = n.serviceClient<dobot::SetHHTTrigOutputEnabled>("/DobotServer/SetHHTTrigOutputEnabled");
        dobot::SetHHTTrigOutputEnabled srv5;
		srv5.request.isEnabled=1;
        client.call(srv5);
      //  ROS_INFO("%d",srv5.request.isEnabled);
  //  } while (0);
		//DobotHome();
	/*do {
        client = n.serviceClient<dobot::GetHHTTrigOutputEnabled>("/DobotServer/GetHHTTrigOutputEnabled");
        dobot::GetHHTTrigOutputEnabled srv6;
        client.call(srv6);
        ROS_INFO("%d",srv6.response.isEnabled);
    //} while (0);*/
    return 0;
}

void DobotHome(){
	ros::NodeHandle n;
	ros::ServiceClient client;
	//执行回零功能
	client = n.serviceClient<dobot::SetHOMECmd>("/DobotServer/SetHOMECmd");
    dobot::SetHOMECmd srv;
    client.call(srv);
}

void PubMsg(ros::Publisher pub,int x){
	ros::Rate loop_rate(10);
	dobot::GetCtrl_msg msg;
	msg.cmd=x;
	pub.publish(msg);
	ros::spinOnce();
	loop_rate.sleep();
}
void keyboard(ros::Publisher &pub){//键盘输入
	unsigned char c;

    // get the console in raw mode　以原始模式获取控制台
    tcgetattr(kfd, &cooked);//tcgetattr是一个函数，用来获取终端参数，成功返回零；失败返回非零，发生失败接口将设置errno错误标识。 
    memcpy(&raw, &cooked, sizeof(struct termios));  //memcpy指的是c和c++使用的内存拷贝函数，memcpy函数的功能是从源内存地址的起始位置开始拷贝若干个字节到目标内存地址中。
    raw.c_lflag &=~ (ICANON | ECHO);//控制模式标志
    raw.c_cc[VEOL] = 1;//控制字符
    raw.c_cc[VEOF] = 2;//控制字符
    tcsetattr(kfd, TCSANOW, &raw);//tcsetattr是用于设置终端参数的函数。

    puts("Reading from keyboard");
    puts("Use 0123 keys to control the robot");
    puts("0:回零操作");
    puts("1:执行操作");
	puts("2:终止操作");
    puts("3:记录点位");
    puts("4:清空点位");
    struct pollfd ufd;
    ufd.fd = kfd;  //设置监控sockfd
    ufd.events = POLLIN;  //设置监控的事件

    for(;;)
    {
        boost::this_thread::interruption_point(); //特殊的中断点函数，它并不等待，只是起到一个标签的作用，表示线程执行到这个函数所在的语句就可以被中断。

        // get the next event from the keyboard　从键盘获取下一个事件
        int num;

        if ((num = poll(&ufd, 1, 250)) < 0) { //poll是Linux中的字符设备驱动中的一个函数
            perror("poll():");
            return;
        } else if(num > 0) {
            if(read(kfd, &c, 1) < 0) {
                perror("read():");
                return;
            }
        } else {
            continue;
        }
        switch(c) {
            case KEYCODE_0:
                ROS_INFO("HOME");
                PubMsg(pub,0); //回零
            	break;
            case KEYCODE_1:
                ROS_INFO("ACTION");
                PubMsg(pub,1);//执行
            	break;
            case KEYCODE_2:
            	ROS_INFO("Stop");
            	PubMsg(pub,2);
            	break;
            case KEYCODE_3:
            	ROS_INFO("Record");
            	PubMsg(pub,3);
            	break;
            case KEYCODE_4:
                ROS_INFO("Clear");
                PubMsg(pub,4);//清空点位
            	break;
            default:
	            break;
	   }
	}
}


bool isTriggered(){
	ros::NodeHandle n;
	ros::ServiceClient client;
	client = n.serviceClient<dobot::GetHHTTrigOutput>("/DobotServer/GetHHTTrigOutput");
	dobot::GetHHTTrigOutput srv;
    client.call(srv);
	//ROS_INFO("%d",srv.response.isTriggered);
    if (srv.response.result==0) return srv.response.isTriggered;
    else {
        ROS_ERROR("Failed to get device version information!");
    }
    return 0;
}
void getPose(ros::Publisher pub){
	while(ros::ok()){
		if(isTriggered()==1){
			while(ros::ok()){
				if(isTriggered()==0){
            		ROS_INFO("Record");
					PubMsg(pub,3);
					break;	
				}
			}
		}
	}
}
int main(int argc, char **argv)
{
	ros::init(argc, argv, "DobotClient_GetInfor");
	ros::NodeHandle n;
	ros::ServiceClient client;
	if(SetUp()==-1)return -1;
	//DobotHome();
	
	signal(SIGINT, MySigintHandler);
	ros::Publisher pub=n.advertise<dobot::GetCtrl_msg>("GetCtrl_msg",1000);
	//多线程
	boost::thread t1(boost::bind(&keyboard,boost::ref(pub)));
	boost::thread t2(boost::bind(&getPose,boost::ref(pub)));
	ros::spin();
	t1.interrupt();
	t1.join();
	
	t2.join();
	
	ros::spin();
	tcsetattr(kfd, TCSANOW, &cooked);
    return 0;
}

