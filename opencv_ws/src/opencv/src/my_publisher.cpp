#include <ros/ros.h>  
#include <image_transport/image_transport.h>  
#include <opencv2/highgui/highgui.hpp>  
#include <cv_bridge/cv_bridge.h>  
#include <sstream> // for converting the command line parameter to integer  

int main(int argc, char** argv)  
{  
	//初始化节点
    ros::init(argc, argv, "image_publisher");  
    ros::NodeHandle nh;  
    image_transport::ImageTransport it(nh);  
    image_transport::Publisher pub = it.advertise("camera/image", 1);  //在发布图像消息时消息队列的长度只能是1

    // Convert the passed as command line parameter index for the video device to an integer
    int video_source;  
    bool check=ros::param::get("/image_publisher/video",video_source);
    
	/*检查视频源是否已作为参数传递*/ 
    if(check == 0)   
    {  
        ROS_INFO("no camera %d\n",video_source);  
        return 1;  
    } 

    cv::VideoCapture cap(video_source);  
    //判断视频读取或者摄像头调用是否成功
    if(!cap.isOpened())   
    {  
        ROS_INFO("can not opencv video device\n");  
        return 1;  
    }  
    cv::Mat frame;  
    
    //ROS中的图像消息类型
    sensor_msgs::ImagePtr msg;  

    ros::Rate loop_rate(5);  
    while (nh.ok()) 
    {  
        cap >> frame;  
        // Check if grabbed frame is actually full with some content  
        if(!frame.empty()) 
        {  
        	//将opencv格式的图像转化为ROS所支持的消息类型
            msg = cv_bridge::CvImage(std_msgs::Header(), "bgr8", frame).toImageMsg();  
            pub.publish(msg);  
            //cv::Wait(1);  
        }  
    }
    
    ros::spinOnce();  
    loop_rate.sleep();  
}  
