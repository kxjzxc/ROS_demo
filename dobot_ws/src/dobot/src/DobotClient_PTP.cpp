#include "ros/ros.h"
#include "std_msgs/String.h"
#include "dobot/SetCmdTimeout.h"
#include "dobot/SetQueuedCmdClear.h"
#include "dobot/SetQueuedCmdStartExec.h"
#include "dobot/SetQueuedCmdForceStopExec.h"
#include "dobot/GetDeviceVersion.h"
#include "signal.h"
#include "vector"

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

void StartQueueCmd(){
	// Start running the command queue
	ros::NodeHandle n;
	ros::ServiceClient client;
    client = n.serviceClient<dobot::SetQueuedCmdStartExec>("/DobotServer/SetQueuedCmdStartExec");
    dobot::SetQueuedCmdStartExec srv3;
    client.call(srv3);
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

    ClearQueueCmd();

    StartQueueCmd();

    // Get device version information
    client = n.serviceClient<dobot::GetDeviceVersion>("/DobotServer/GetDeviceVersion");
    dobot::GetDeviceVersion srv4;
    client.call(srv4);
    if (srv4.response.result == 0) {
        ROS_INFO("Device version:%d.%d.%d", srv4.response.majorVersion, srv4.response.minorVersion, srv4.response.revision);
    } else {
        ROS_ERROR("Failed to get device version information!");
    }

    // Set end effector parameters
    client = n.serviceClient<dobot::SetEndEffectorParams>("/DobotServer/SetEndEffectorParams");
    dobot::SetEndEffectorParams srv5;
    srv5.request.xBias = 70;
    srv5.request.yBias = 0;
    srv5.request.zBias = 0;
    client.call(srv5);

	// Set PTP joint parameters
    do {
        client = n.serviceClient<dobot::SetPTPJointParams>("/DobotServer/SetPTPJointParams");
        dobot::SetPTPJointParams srv;

        for (int i = 0; i < 4; i++) {
            srv.request.velocity.push_back(100);
        }
        for (int i = 0; i < 4; i++) {
            srv.request.acceleration.push_back(100);
        }
        client.call(srv);
    } while (0);

    // Set PTP coordinate parameters
    do {
        client = n.serviceClient<dobot::SetPTPCoordinateParams>("/DobotServer/SetPTPCoordinateParams");
        dobot::SetPTPCoordinateParams srv;

        srv.request.xyzVelocity = 100;
        srv.request.xyzAcceleration = 100;
        srv.request.rVelocity = 100;
        srv.request.rAcceleration = 100;
        client.call(srv);
    } while (0);

    // Set PTP jump parameters
    do {
        client = n.serviceClient<dobot::SetPTPJumpParams>("/DobotServer/SetPTPJumpParams");
        dobot::SetPTPJumpParams srv;

        srv.request.jumpHeight = 20;
        srv.request.zLimit = 200;
        client.call(srv);
    } while (0);

    // Set PTP common parameters
    do {
        client = n.serviceClient<dobot::SetPTPCommonParams>("/DobotServer/SetPTPCommonParams");
        dobot::SetPTPCommonParams srv;

        srv.request.velocityRatio = 50;
        srv.request.accelerationRatio = 50;
        client.call(srv);
    } while (0);
	ros::spinOnce();
	return 0;
}

//执行功能
std::vector<dobot::SetPTPCmd>Point;
//执行回零功能
void DobotHome(){
	ros::NodeHandle n;
	ros::ServiceClient client;
	client = n.serviceClient<dobot::SetHOMECmd>("/DobotServer/SetHOMECmd");
    dobot::SetHOMECmd srv;
    client.call(srv);
}
//打印末端位置
void Print(dobot::SetPTPCmd point){
	ROS_INFO("x:%f,y:%f,z:%f,r:%f",point.request.x,point.request.y,point.request.z,point.request.r);
}

//Action函数
void OpenSuctionCup(){
	ros::NodeHandle n;
	ros::ServiceClient client;
	client = n.serviceClient<dobot::SetEndEffectorSuctionCup>("/DobotServer/SetEndEffectorSuctionCup");
    dobot::SetEndEffectorSuctionCup srv;
    srv.request.isQueued=1;
    srv.request.enableCtrl=1;
    srv.request.suck=1;
    client.call(srv);
}
void Wait(int time){
	ros::NodeHandle n;
	ros::ServiceClient client;
	client = n.serviceClient<dobot::SetWAITCmd>("/DobotServer/SetWAITCmd");
    dobot::SetWAITCmd srv;
    srv.request.timeout=time;
    client.call(srv);
}

void CloseSuctionCup(){
	ros::NodeHandle n;
	ros::ServiceClient client;
	client = n.serviceClient<dobot::SetEndEffectorSuctionCup>("/DobotServer/SetEndEffectorSuctionCup");
	dobot::SetEndEffectorSuctionCup srv;
    srv.request.isQueued=1;
    srv.request.suck=0;
    client.call(srv);
}
void Move(dobot::SetPTPCmd point){
	ros::NodeHandle n;
	ros::ServiceClient client;
	client = n.serviceClient<dobot::SetPTPCmd>("/DobotServer/SetPTPCmd");
	do {
		point.request.ptpMode=0;
		client.call(point);
		if (point.response.result == 0) {
		    return;
		}     
		ros::spinOnce();
		if (ros::ok() == false) {
		    return;
		}
	} while (1);
}
void Action(){
	ros::NodeHandle n;
    if(Point.size()>1)ROS_INFO("Start move!");
    else {
    	ROS_INFO("too little point!");
    	return;
    }
    // The first point
   	Move(Point[0]);
	OpenSuctionCup();
	Wait(3000);
	
	for(int i=1;i<Point.size();i++){
    	Move(Point[i]);
    }
    
	CloseSuctionCup();
	Wait(3000);
	ros::spinOnce();
}

//终止执行
void Stop(){
    StopQueueCmd();
	ClearQueueCmd();
	StartQueueCmd();
}
//获取点位

void getPoint(){
	ros::NodeHandle n;
	ros::ServiceClient client;
	client = n.serviceClient<dobot::GetPose>("/DobotServer/GetPose");
	dobot::GetPose srv;
	client.call(srv);
	if (srv.response.result==0) {
		ROS_INFO("x:%lf y:%lf z:%lf r:%lf", srv.response.x, srv.response.y, srv.response.z,srv.response.r);
		dobot::SetPTPCmd P;
		P.request.x=srv.response.x;
		P.request.y=srv.response.y;
		P.request.z=srv.response.z;
		P.request.r=srv.response.r;
		Point.push_back(P);
		
	} else {
		ROS_ERROR("Failed to get device version information!");
	}
}

void MySigintHandler(int sig)
{
	//这里主要进行退出前的数据保存、内存清理、告知其他节点等工作
	ROS_INFO("shutting down!");
    StopQueueCmd();
	CloseSuctionCup();
	ClearQueueCmd();
	ros::shutdown();
}
void messageCallback(const dobot::GetCtrl_msg::ConstPtr &msg){
	switch (msg->cmd){
		case 0:
			DobotHome();
			break;
		case 1:
			Action();
			break;
		case 2:
			Stop();
			break;
		case 3:
			getPoint();
			break;
		case 4:
			Point.clear();
			break;
		
	}
		
}
int main(int argc, char **argv)
{
	ros::init(argc, argv, "DobotClient");
	ros::NodeHandle n;
	ros::ServiceClient client;
	signal(SIGINT, MySigintHandler);
	if(SetUp()==-1)return -1;
	//DobotHome();
	ros::Subscriber sub = n.subscribe<dobot::GetCtrl_msg>("GetCtrl_msg", 1000,messageCallback);
	ros::spin();
    return 0;
}

