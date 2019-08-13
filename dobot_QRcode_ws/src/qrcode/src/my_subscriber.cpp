#include <ros/ros.h>  
#include "std_msgs/String.h"

#include "iostream"
#include "string.h"
#include "fstream"
#include "signal.h"
#include <termios.h>
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/poll.h>
#include <boost/thread/thread.hpp>

#include "opencv2/core/core.hpp" 
#include "opencv2/highgui/highgui.hpp" 
#include "opencv2/imgproc/imgproc.hpp" 
#include <opencv2/opencv.hpp>

#include <image_transport/image_transport.h>  
#include <cv_bridge/cv_bridge.h>  
#include <zbar.h>
#define oo 1e9+7
using namespace std;
using namespace zbar;  //添加zbar名称空间      
using namespace cv;


void MySigintHandler(int sig)
{
	//这里主要进行退出前的数据保存、内存清理、告知其他节点等工作
	ROS_INFO("shutting down!");
    cv::destroyWindow("Source Image");  
	ros::shutdown();
}

//扫描图像
bool Scan(Mat image,ros::Publisher pub){
	
	//zbar类，定义扫描器
	ImageScanner scanner;
	//配置参数，初始化
	scanner.set_config(ZBAR_NONE, ZBAR_CFG_ENABLE, 1);

	int width = image.cols;
	int height = image.rows;
	uchar *raw = (uchar *)image.data;
	//封装图像数据 Y800单色图像格式
	Image imageZbar(width, height, "Y800", raw, width * height);
	
	//扫描条码或者二维码
	scanner.scan(imageZbar);
	
	for (Image::SymbolIterator symbol = imageZbar.symbol_begin(); symbol != imageZbar.symbol_end(); ++symbol)
	{
		cout << "类型：" << endl << symbol->get_type_name() << endl << endl;
		cout << "条码：" << endl << symbol->get_data() << endl << endl;
		ros::Rate loop_rate(10);
		std_msgs::String msg;
		msg.data=symbol->get_data();
		pub.publish(msg);
		ros::spinOnce();
		loop_rate.sleep();
		return 1;
	}
	
	//清除缓存	
	imageZbar.set_data(NULL, 0);
	return 0;
}
int wait=-1;
void imageCallback(const sensor_msgs::ImageConstPtr& msg,ros::Publisher pub)  
{  
    try  
    {  
		Mat image=cv_bridge::toCvShare(msg, "bgr8")->image;
		imshow("Source Image", image);
		if(wait==3000)wait=-1;
		else if(wait!=-1){
			wait++;
			return;
		}
		cvtColor(image, image, CV_RGB2GRAY);
		//image=Pretreatment(image);
		
		if(Scan(image,pub))wait=0;
        //waitKey(30);  
    }  
    catch (cv_bridge::Exception& e)  //异常处理
    {  
        ROS_ERROR("Could not convert from '%s' to 'bgr8'.", msg->encoding.c_str());  
    }  
}
int main(int argc, char*argv[])
{
	ros::init(argc, argv, "image_listener");  
    ros::NodeHandle nh;  
    cv::namedWindow("Source Image");  
    //开始窗口线程（大概是不断刷新窗口的意思？）
    cv::startWindowThread();  
    image_transport::ImageTransport it(nh);  
	signal(SIGINT, MySigintHandler);
	ros::Publisher pub=nh.advertise<std_msgs::String>("GetCtrl_msg",1000);
    image_transport::Subscriber sub = it.subscribe("camera/image", 1,boost::bind(&imageCallback,_1,boost::ref(pub)));  
    ros::spin(); 
    cv::destroyWindow("Source Image");  
	return 0;
}
