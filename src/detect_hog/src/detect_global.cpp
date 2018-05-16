/*
 *output car position in global position
 */

#include "ros/ros.h"
#include "std_msgs/String.h"
#include <vector>
#include <string>
#include "opencv2/opencv.hpp"
#include "opencv2/ml.hpp"

#include <stdio.h>
#include <string.h>
#include <cctype>
#include<iostream>
#include <fstream>

#include <sstream>
#include <algorithm>

#include <opencv2/highgui/highgui.hpp>
#include <dirent.h>
#include <detect_hog/RobotCamPos.h>
#include <detect_hog/RobotCamGlobalPos.h>

using namespace cv;
using namespace cv::ml;
using namespace std;

class RobotDetect{
public:
  ros::NodeHandle n;
  ros::Publisher pub_globalPos;
  ros::Subscriber left_sub;
  ros::Subscriber back_sub;
  ros::Subscriber right_sub;
  
  detect_hog::RobotCamGlobalPos globalPos;
  
  RobotDetect(){
    init_detectState();
    pub_globalPos = n.advertise<detect_hog::RobotCamGlobalPos>("/robot_global_position",10);
    left_sub = n.subscribe<detect_hog::RobotCamPos>("/robot_cam_position_left",100,&RobotDetect::updatePos_left,this);
    right_sub = n.subscribe<detect_hog::RobotCamPos>("/robot_cam_position_right",100,&RobotDetect::updatePos_right,this);
    back_sub = n.subscribe<detect_hog::RobotCamPos>("/robot_cam_position_back",100,&RobotDetect::updatePos_back,this);
    
  }
  
  ~RobotDetect(){
    destroyAllWindows();
  }
  void updatePos_left(const detect_hog::RobotCamPos::ConstPtr& rcp){
    if (rcp->exist_rob_flag) globalPos.left_exist_rob_flag=true;
    else globalPos.left_exist_rob_flag=false;
    pub_globalPos.publish(globalPos);
  }
  void updatePos_right(const detect_hog::RobotCamPos::ConstPtr& rcp){
    if (rcp->exist_rob_flag) globalPos.right_exist_rob_flag=true;
    else globalPos.right_exist_rob_flag=false;
    pub_globalPos.publish(globalPos);
  }
  void updatePos_back(const detect_hog::RobotCamPos::ConstPtr& rcp){
    if (rcp->exist_rob_flag) globalPos.back_exist_rob_flag=true;
    else globalPos.back_exist_rob_flag=false;
    pub_globalPos.publish(globalPos);
  }
  void init_detectState(){
    globalPos.left_exist_rob_flag=false;
    globalPos.right_exist_rob_flag=false;
    globalPos.back_exist_rob_flag=false;
  }
};



int main(int argc,char **argv){
  ros::init(argc,argv,"detect_hog_globalPos");
  RobotDetect RD;
  //ros::Rate loop_rate(0.5);
  //while(ros::ok()){
  //  ros::spinOnce();
  //  loop_rate.sleep();
  //}
  ros::spin();
  return 0;
}