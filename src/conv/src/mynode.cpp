#include <ros/ros.h>
#include <visualization_msgs/MarkerArray.h>
#include <bulletsim_msgs/TrackedObject.h>
#include <bulletsim_msgs/Mesh.h>

class myclass
{
public:
  myclass(ros::NodeHandle& nh)
  {
    pub = nh.advertise<visualization_msgs::MarkerArray>("mytopic",1000);
    sub = nh.subscribe<bulletsim_msgs::TrackedObject>("/tracker/object",1000,&myclass::cbfunction,this);
    
  }


  void cbfunction(const bulletsim_msgs::TrackedObject::ConstPtr &p)
  {

   v1.markers.resize(p->rope.nodes.size());
   //std::cout << v1.markers.size() << std::endl;
   //std::cout << p->rope.nodes.size() << std::endl;
       for (int i = 0; i < p->rope.nodes.size(); i++)
        {
          const double width = 0.01;
          const double thickness = 0.01;
          v1.markers[i].header.frame_id = "ground";
          v1.markers[i].header.stamp = ros::Time::now();
          v1.markers[i].id = i;
          v1.markers[i].scale.x = width;
          v1.markers[i].scale.y = width;
          v1.markers[i].scale.z = thickness;
          v1.markers[i].color.a = 1.0;
          v1.markers[i].color.b = 1.0;
          v1.markers[i].type = visualization_msgs::Marker::SPHERE;
          v1.markers[i].pose.orientation.x = 0.0;
          v1.markers[i].pose.orientation.y = 0.0;
          v1.markers[i].pose.orientation.z = 0.0;
          v1.markers[i].pose.orientation.w = 1.0;
          v1.markers[i].pose.position.x=p->rope.nodes[i].x;
          v1.markers[i].pose.position.y=p->rope.nodes[i].y;
          v1.markers[i].pose.position.z=p->rope.nodes[i].z;
        }
        pub.publish(v1);
  } 
  visualization_msgs::MarkerArray v1;
  ros::Subscriber sub;
  ros::Publisher pub ;
};

int main(int argc, char* argv[])
{
  ros::init(argc, argv, "mynode");
  ros::NodeHandle nh;
  myclass myclass(nh);
  ros::spin();
} 