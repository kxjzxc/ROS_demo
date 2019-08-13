#include <ros/ros.h>  
#include <image_transport/image_transport.h>  
#include <opencv2/highgui/highgui.hpp>  
#include <cv_bridge/cv_bridge.h>  

void imageCallback(const sensor_msgs::ImageConstPtr& msg)  
{  
    try  
    {  
        cv::imshow("view", cv_bridge::toCvShare(msg, "8UC1")->image); 
        // cv::waitKey(30);  
    }  
    catch (cv_bridge::Exception& e)  //异常处理
    {  
        ROS_ERROR("Could not convert from '%s' to 'bgr8'.", msg->encoding.c_str());  
    }  
}  

int main(int argc, char **argv)  
{  
    ros::init(argc, argv, "image_listener");  
    ros::NodeHandle nh;  
    cv::namedWindow("view");  
    //开始窗口线程（大概是不断刷新窗口的意思？）
    cv::startWindowThread();  
    image_transport::ImageTransport it(nh);  
    image_transport::Subscriber sub = it.subscribe("cv_bridge_image", 1,imageCallback);  
    ros::spin();  
    cv::destroyWindow("view");  
}  
