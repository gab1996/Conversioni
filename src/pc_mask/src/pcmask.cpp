#include <ros/ros.h>
#include <sensor_msgs/PointCloud2.h>
#include <pcl_ros/point_cloud.h>
#include <pcl/point_types.h>
#include <pcl/filters/conditional_removal.h>
#include <pcl_conversions/pcl_conversions.h>
#include <pcl/filters/passthrough.h>
#include <pcl/filters/radius_outlier_removal.h>
#include <pcl/filters/statistical_outlier_removal.h>
#include <pcl/filters/voxel_grid.h>
class myclass2
{
public:
  myclass2(ros::NodeHandle& nh)
  {
    //pub = nh.advertise<sensor_msgs::PointCloud2>("pcl_topic",1000);
    pub = nh.advertise<sensor_msgs::PointCloud2>("/preprocessor/kinect1/points",1000);
    sub = nh.subscribe("/camera/depth/color/points",1000,&myclass2::cbfunction,this);
    // pub =nh.advertise<sensor_msgs::PointCloud2>("/preprocessor/kinect1/points",1000);

  }
  

  void cbfunction(const sensor_msgs::PointCloud2ConstPtr &msg){

  // Conversione del messaggio PointCloud2 in un oggetto di tipo pcl::PointCloud
  pcl::PointCloud<pcl::PointXYZRGB> cloud;
  pcl::fromROSMsg(*msg, cloud);

  // Creazione del filtro per selezionare i punti verdi
  pcl::ConditionAnd<pcl::PointXYZRGB>::Ptr color_cond(new pcl::ConditionAnd<pcl::PointXYZRGB>());

  color_cond->addComparison(pcl::PackedRGBComparison<pcl::PointXYZRGB>::Ptr(new pcl::PackedRGBComparison<pcl::PointXYZRGB>("g", pcl::ComparisonOps::GT, 150)));
  
  // Applicazione del filtro per selezionare i punti verdi
  pcl::ConditionalRemoval<pcl::PointXYZRGB> cond_removal;
  cond_removal.setCondition(color_cond);
  cond_removal.setInputCloud(cloud.makeShared());
  cond_removal.filter(cloud);

  pcl::PassThrough<pcl::PointXYZRGB> pass;
  pass.setInputCloud(cloud.makeShared());
  pass.setFilterFieldName("x");
  pass.setFilterLimits(-0.5, 0.5);
  pass.filter(cloud);

  pass.setInputCloud(cloud.makeShared());
  pass.setFilterFieldName("y");
  pass.setFilterLimits(-0.3, 0.5);
  pass.filter(cloud);

  pass.setInputCloud(cloud.makeShared());
  pass.setFilterFieldName("z");
  pass.setFilterLimits(0, 1);
  pass.filter(cloud);
  std::cout<<"prima"<<cloud.size()<<std::endl;

  pcl::VoxelGrid<pcl::PointXYZRGB> voxelGridFilter;
  voxelGridFilter.setInputCloud(cloud.makeShared());
  voxelGridFilter.setLeafSize(0.005, 0.005, 0.005); // Impostare la dimensione del voxel

  // Eseguire il downsampling
  voxelGridFilter.filter(cloud);
  std::cout<<"dopo"<<cloud.size()<<std::endl;

  
  // pcl::RadiusOutlierRemoval<pcl::PointXYZRGB> sor;
  // sor.setInputCloud(cloud.makeShared());
  // sor.setRadiusSearch(0.1); 
  // sor.setMinNeighborsInRadius(30); 
  // sor.filter(cloud);

  // pcl::StatisticalOutlierRemoval<pcl::PointXYZRGB> sor;
  // sor.setInputCloud(cloud.makeShared());
  // sor.setMeanK(50);  // Numero di punti considerati per calcolare media e deviazione standard
  // sor.setStddevMulThresh(0.5);  // Soglia moltiplicativa per la deviazione standard
  // sor.filter(cloud);
    

  sensor_msgs::PointCloud2 filteredPointCloudMsg;
  pcl::toROSMsg(cloud, filteredPointCloudMsg);

  // Impostazione del frame ID e del timestamp
  filteredPointCloudMsg.header.frame_id = msg->header.frame_id;
  filteredPointCloudMsg.header.stamp = ros::Time::now();

  // Pubblicazione del cloud filtrato sul nuovo topic
  pub.publish(filteredPointCloudMsg);
}
  
  //sensor_msgs::PointCloud2 pcl;
  ros::Subscriber sub;
  ros::Publisher pub ;
};

int main(int argc, char* argv[])
{
  ros::init(argc, argv, "Mask_node");
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
