#include <ros/ros.h>
#include <visualization_msgs/MarkerArray.h>
#include <bulletsim_msgs/TrackedObject.h>
#include <bulletsim_msgs/Mesh.h>
#include <geometry_msgs/Vector3.h>
#include <iostream>

class myclass1
{
public:
  myclass1(ros::NodeHandle& nh)
  {
    pub = nh.advertise<visualization_msgs::MarkerArray>("cloth_topic",1000);
    sub = nh.subscribe<bulletsim_msgs::TrackedObject>("/tracker/object",1000,&myclass1::cbfunction,this);
  }

  void cbfunction(const bulletsim_msgs::TrackedObject::ConstPtr &p)
  {
   v1.markers.resize(p->mesh.faces.size());
  //  v1.markers.resize(p->mesh.vertices.size());
   //std::cout<<p->mesh.faces.size()<<std::endl;
   
  
   //std::cout << v1.markers.size() << std::endl;
   //std::cout << p->rope.nodes.size() << std::endl;
       for (int k = 0; k < p->mesh.faces.size();k++)
        {        
              v1.markers[k].points.resize(3);
              v1.markers[k].header.frame_id = "ground";
              v1.markers[k].header.stamp = ros::Time::now();
              v1.markers[k].id = k;
              v1.markers[k].scale.x = 1;
              v1.markers[k].scale.y = 1;
              v1.markers[k].scale.z = 1;
              v1.markers[k].color.a = 1.0;
              
              // if(k==57){
              //   v1.markers[k].color.r=1.0;
              // }
              //   else{
              //     v1.markers[k].color.g=1.0;
              //   }
              
              v1.markers[k].color.g = 1.0;
              v1.markers[k].type = visualization_msgs::Marker::TRIANGLE_LIST;
              // v1.markers[k].pose.position.x = p->mesh.vertices[k].x;
              // v1.markers[k].pose.position.y = p->mesh.vertices[k].y;
              // v1.markers[k].pose.position.z = p->mesh.vertices[k].z;
              v1.markers[k].pose.orientation.x = 0.0;
              v1.markers[k].pose.orientation.y = 0.0;
              v1.markers[k].pose.orientation.z = 0.0;
              v1.markers[k].pose.orientation.w = 1.0;


            for (int j=0;j<p->mesh.faces[k].vertex_inds.size();j++){

              v1.markers[k].points[j].x=p->mesh.vertices[p->mesh.faces[k].vertex_inds[j]].x;

              v1.markers[k].points[j].y=p->mesh.vertices[p->mesh.faces[k].vertex_inds[j]].y;

              v1.markers[k].points[j].z=p->mesh.vertices[p->mesh.faces[k].vertex_inds[j]].z;


             }
              // std::cout<<"x:"<<v1.markers[0].points[0].x<<std::endl;
              // std::cout<<"y:"<<v1.markers[0].points[1].y<<std::endl;
              // std::cout<<"z:"<<v1.markers[0].points[2].z<<std::endl;
              // std::cout<<"--------"<<std::endl;
              

        
        }
        pub.publish(v1);
        
  } 
  
  visualization_msgs::MarkerArray v1;
  ros::Publisher pub_err;
  ros::Subscriber sub;
  ros::Publisher pub ;
};

int main(int argc, char* argv[])
{
  ros::init(argc, argv, "clothnode");
  ros::NodeHandle nh;
  ros::Rate(500);
  myclass1 myclass1(nh);
  ros::spin();
} 