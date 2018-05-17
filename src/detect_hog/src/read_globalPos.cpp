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

void printInfo(const detect_hog::RobotCamGlobalPos::ConstPtr& GlobalPos){
  cout << "get globalpos"<<endl;
}
void printInfo2(const detect_hog::RobotCamPos::ConstPtr& rp){
  cout <<" get BackPos"<<endl;
}
void printInfo3(const detect_hog::RobotCamPos::ConstPtr& rp){
  cout <<" get LeftPos"<<endl;
}

void printInfo4(const detect_hog::RobotCamPos::ConstPtr& rp){
  cout <<" get RightPos"<<endl;
}


int main(int argc,char **argv){
  ros::init(argc,argv,"detect_hog_readGloalPos");
  ros::NodeHandle n;
  ros::Subscriber sub=n.subscribe("/robot_global_position",2,printInfo);
  ros::Subscriber sub2=n.subscribe("/robot_cam_position_back",2,printInfo2);
  ros::Subscriber sub3=n.subscribe("/robot_cam_position_left",2,printInfo3);
  ros::Subscriber sub4=n.subscribe("/robot_cam_position_right",2,printInfo4);
  ros::spin();
  return 0;
}