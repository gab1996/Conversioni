#include <ros/ros.h>
#include <sensor_msgs/PointCloud2.h>
#include <sensor_msgs/Image.h>

#include <std_msgs/String.h>
#include <string>

class myclass2
{
public:
  myclass2(ros::NodeHandle& nh)
  {
    //pub = nh.advertise<sensor_msgs::PointCloud2>("pcl_topic",1000);
    pub = nh.advertise<sensor_msgs::Image>("pcl_topic",1000);
    sub = nh.subscribe("/preprocessor/kinect1/depth",1000,&myclass2::cbfunction,this);
    // pub =nh.advertise<sensor_msgs::PointCloud2>("/preprocessor/kinect1/points",1000);

  }
  
  //void cbfunction(const sensor_msgs::PointCloud2 &p){
  void cbfunction(const sensor_msgs::Image &p){
        // pcl.data=p.data;
        // pcl.fields=p.fields;
        // pcl.height=p.height;
        // pcl.is_bigendian=p.is_bigendian;
        // pcl.is_dense=p.is_dense;
        // pcl.point_step=p.point_step;
        // pcl.width=p.width;
        // pcl.row_step=p.row_step;
        // pcl.header.frame_id="kinect1_rgb_optical_frame";
        // pub.publish(pcl);
        im.data=p.data;
        im.height=p.height;
        im.is_bigendian=p.is_bigendian;
        im.width=p.width;
        im.header.frame_id="kinect1_rgb_optical_frame";
        im.encoding=p.encoding;
        im.step=p.step;
        pub.publish(im);
  } 
  //sensor_msgs::PointCloud2 pcl;
  sensor_msgs::Image im;
  ros::Subscriber sub;
  ros::Publisher pub ;
};

int main(int argc, char* argv[])
{
  ros::init(argc, argv, "PCLnode");
  ros::NodeHandle nh;
  myclass2 myclass2(nh);
  //sensor_msgs::PointCloud2 pc;
  //std_msgs::String pc;
  // std::cout<<"ciao2"<<std::endl;
  //ros::Publisher pub =nh.advertise<std_msgs::String>("/preprocessor/kinect1/points",1000,true);
  // ros::Publisher pub =nh.advertise<sensor_msgs::PointCloud2>("/preprocessor/kinect1/points",1000,true);
  // pub.publish(pc);
  // std::cout<<"ciao"<<std::endl;
  ros::spin();
} 
