/*
opencv3.2.0  vs2015
HOG+SVM detect
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

using namespace cv;
using namespace cv::ml;
using namespace std;



#define FILEPATH  "/home/nvidia/catkin_tx2/src/detect_hog/"
/*
void Detect()
{
	//load parameter
  
	ifstream launchFile;
	string launchFilelocation = string(FILEPATH)+"launch.txt";
	launchFile.open(launchFilelocation);
	string firstLine;
	getline(launchFile, firstLine);
	launchFile.close();
	istringstream ss(firstLine);
	
	string videostreamlocation;
	string resultvideolocation;
	string HOG_SVMtxtlocation;
	string partImglocation;
	int ifImshow;
	int ifOutputResultvideo;
	int ifWritePartImg;
	string partImg_ex;
	int videoorcamera;
	ss >> videostreamlocation;
	ss >> resultvideolocation;
	ss >> HOG_SVMtxtlocation;
	ss >> partImglocation;
	ss >> ifImshow;
	ss >> ifOutputResultvideo;
	ss >> ifWritePartImg;
	ss >> partImg_ex;
	ss >> videoorcamera;
	
	VideoCapture capture(videostreamlocation);
	//if(!videoorcamera)  VideoCapture capture(0); 
	if (!capture.isOpened())  
	{  
	    cout << "error" << endl;  
	    waitKey(0);  
	    return;  
	} 
	int w_kevin = capture.get(CV_CAP_PROP_FRAME_WIDTH);
	int h_kevin = capture.get(CV_CAP_PROP_FRAME_HEIGHT);
	 
	double rate = capture.get(CV_CAP_PROP_FPS);
	VideoWriter writer(string(FILEPATH) +resultvideolocation, CV_FOURCC('M', 'J', 'P', 'G'), rate, Size(w_kevin, h_kevin), true);
	if (!writer.isOpened())
	{
		printf("write1 error .. \n"); return;
	}

	Mat img;
	Mat partImg;
	FILE* f = 0;
	char _filename[1024];
	int partImg_count = 0;

	vector<float> detector;
	ifstream fileIn(string(FILEPATH) + HOG_SVMtxtlocation, ios::in);
	float val = 0.0f;
	double fps = 0.0;
	while (!fileIn.eof())
	{
		fileIn >> val;
		//cout << val<<endl;
		detector.push_back(val);
	}
	fileIn.close();

	HOGDescriptor hog(cvSize(64, 64), cvSize(16, 16), cvSize(8, 8), cvSize(8, 8), 9);
	hog.setSVMDetector(detector);
	//cout << "set HOG done" << endl;

	while (capture.isOpened())
	{
		capture >> img;
		if (img.empty()) break;
		fflush(stdout);
		vector<Rect> found, found_filtered;
		double t = (double)getTickCount();
		resize(img, img, Size(w_kevin, h_kevin));
		hog.detectMultiScale(img, found, 0, Size(8, 8), Size(0, 0), 1.05, 2);
		t = (double)getTickCount() - t;
		//printf("detection time = %gms\n", t*1000. / cv::getTickFrequency());
		cout << 1000 / (t*1000. / cv::getTickFrequency()) << endl;
		
		size_t i, j;

		for (i = 0; i < found.size(); i++)
		{
			Rect r = found[i];
			for (j = 0; j < found.size(); j++)
				if (j != i && (r & found[j]) == r)
					break;
			if (j == found.size())
				found_filtered.push_back(r);
		}

		for (i = 0; i < found_filtered.size(); i++)
		{
			Rect r = found_filtered[i];
			//xk20180508
			if (found_filtered.size()>1){        //if(i>0)   if (found_filtered.size()>1)
				string partImgName = string(FILEPATH) + partImglocation + partImg_ex + to_string(partImg_count) + ".jpg";
				partImg_count++;
				//namedWindow(partImgName, 1);
				partImg = img(r);
				if(ifWritePartImg){
				  imwrite(partImgName, partImg);
				}
				
			}
		}

		for (i = 0; i < found_filtered.size(); i++)
		{
			Rect r = found_filtered[i];
			// the HOG detector returns slightly larger rectangles than the real objects.
			// so we slightly shrink the rectangles to get a nicer output.
			r.x += cvRound(r.width*0.1);
			r.width = cvRound(r.width*0.8);
			r.y += cvRound(r.height*0.07);
			r.height = cvRound(r.height*0.8);
			rectangle(img, r.tl(), r.br(), cv::Scalar(0, 255, 0), 3);
		}
		
		if(ifImshow)  imshow("detector", img);
		if(ifOutputResultvideo)  writer << img;
		int key = waitKey(30);
		if (key == 'q' || key == 'Q' || key == 27)
			break;
		
	}
	if (f)  fclose(f);

	capture.release();
	writer.release();
	return;
}
*/
float caculatePos_x(Rect r, int framewidth){
  float pos_x=float((r.x+r.width/2))/float(framewidth);
  //cout<<r.x<<" "<<r.width<<" "<<r.width/2<<" "<<framewidth<<" "<<pos_x<<endl;
  return  (int)(pos_x*100+0.5)/100.0;
}
float caculatePos_y(Rect r, int frameheight){
  float pos_y=float((r.y+r.height/2))/float(frameheight);
  return (int)(pos_y*100+0.5)/100.0;
}

detect_hog::RobotCamPos init_detectState(detect_hog::RobotCamPos rcp){
  rcp.exist_rob_flag=false;
  rcp.rob_num=0;
  for(int i =0;i<5;i++){
    rcp.rob_cam_pos_x[i]=0;
    rcp.rob_cam_pos_y[i]=0;
    rcp.rob_cam_vel_x[i]=0;
    rcp.rob_cam_vel_y[i]=0;
  }
  return rcp;
}
detect_hog::RobotCamPos reset_detectState(detect_hog::RobotCamPos rcp){
  rcp.exist_rob_flag=false;
  rcp.rob_num=0;
  for(int i =0;i<5;i++){
    rcp.rob_cam_pos_x[i]=0;
    rcp.rob_cam_pos_y[i]=0;
    rcp.rob_cam_vel_x[i]=0;
    rcp.rob_cam_vel_y[i]=0;
  }
  return rcp;
}

int main(int argc, char **argv) {
  ros::init(argc, argv, "detect_hog_left");
  ros::NodeHandle n; 
  ros::Publisher msg_pub = n.advertise<detect_hog::RobotCamPos>("/robot_cam_position_left",10);
  detect_hog::RobotCamPos rcp;
  int rob_pub_num=0;
  rcp=init_detectState(rcp);
  //Detect();
  //load parameter

  ifstream launchFile;
  string launchFilelocation = string(FILEPATH)+"launch.txt";
  launchFile.open(launchFilelocation);
  string firstLine;
  getline(launchFile, firstLine);
  launchFile.close();
  istringstream ss(firstLine);
  
  string videostreamlocation;
  string resultvideolocation;
  string HOG_SVMtxtlocation;
  string partImglocation;
  int ifImshow;
  int ifOutputResultvideo;
  int ifWritePartImg;
  string partImg_ex;
  int videoorcamera;
  float ResizeOriginTimes;
  int block_stride;
  int win_stride;
  float scale0;
  
  
  ss >> videostreamlocation;
  ss >> resultvideolocation;
  ss >> HOG_SVMtxtlocation;
  ss >> partImglocation;
  ss >> ifImshow;
  ss >> ifOutputResultvideo;
  ss >> ifWritePartImg;
  ss >> partImg_ex;
  ss >> videoorcamera;
  ss >> ResizeOriginTimes;
  ss >> block_stride;
  ss >> win_stride;
  ss >> scale0;
  
  VideoCapture capture(videostreamlocation);
  //if(!videoorcamera)  VideoCapture capture(0); 
  if (!capture.isOpened())  
  {  
      cout << "error" << endl;  
      waitKey(0);  
      return 0;  
  } 
  int w_kevin = capture.get(CV_CAP_PROP_FRAME_WIDTH);
  int h_kevin = capture.get(CV_CAP_PROP_FRAME_HEIGHT);
  w_kevin=w_kevin/ResizeOriginTimes;
  h_kevin=h_kevin/ResizeOriginTimes;
    
  double rate = capture.get(CV_CAP_PROP_FPS);
  VideoWriter writer(string(FILEPATH) +resultvideolocation, CV_FOURCC('M', 'J', 'P', 'G'), rate, Size(w_kevin, h_kevin), true);
  if (!writer.isOpened())
  {
	  printf("write1 error .. \n"); return 0;
  }

  Mat img;
  Mat partImg;
  FILE* f = 0;
  char _filename[1024];
  int partImg_count = 0;

  vector<float> detector;
  ifstream fileIn(string(FILEPATH) + HOG_SVMtxtlocation, ios::in);
  float val = 0.0f;
  double fps = 0.0;
  while (!fileIn.eof())
  {
	  fileIn >> val;
	  //cout << val<<endl;
	  detector.push_back(val);
  }
  fileIn.close();

  HOGDescriptor hog(cvSize(64, 64), cvSize(16, 16), cvSize(block_stride, block_stride), cvSize(8, 8), 9);
  hog.setSVMDetector(detector);
  //cout << "set HOG done" << endl;

  while (capture.isOpened())
  {	 
          double t = (double)getTickCount();
	  
	  capture >> img;
	  if (img.empty()) break;
	  fflush(stdout);
	  vector<Rect> found, found_filtered;
	  resize(img, img, Size(w_kevin, h_kevin));
	  hog.detectMultiScale(img, found, 0, Size(win_stride, win_stride), Size(0, 0), scale0, 2);
	  
	  size_t i, j;

	  for (i = 0; i < found.size(); i++)
	  {
		  Rect r = found[i];
		  for (j = 0; j < found.size(); j++)
			  if (j != i && (r & found[j]) == r)
				  break;
		  if (j == found.size())
			  found_filtered.push_back(r);
	  }
	  //save result rect;
	  for (i = 0; i < found_filtered.size(); i++)
	  {
		  Rect r = found_filtered[i];
		  //xk20180508
		  if (found_filtered.size()>1){        //if(i>0)   if (found_filtered.size()>1)
			  string partImgName = string(FILEPATH) + partImglocation + partImg_ex + to_string(partImg_count) + ".jpg";
			  partImg_count++;
			  //namedWindow(partImgName, 1);
			  partImg = img(r);
			  if(ifWritePartImg){
			    imwrite(partImgName, partImg);
			  }
			  
		  }
	  }

	  for (i = 0; i < found_filtered.size(); i++)
	  {
		  Rect r = found_filtered[i];
		  // the HOG detector returns slightly larger rectangles than the real objects.
		  // so we slightly shrink the rectangles to get a nicer output.
		  r.x += cvRound(r.width*0.1);
		  r.width = cvRound(r.width*0.8);
		  r.y += cvRound(r.height*0.07);
		  r.height = cvRound(r.height*0.8);
		  rectangle(img, r.tl(), r.br(), cv::Scalar(0, 255, 0), 3);
	  }
	  
	  //caculate robot_cam_position
	  if(found_filtered.size()>0){
	    	  if(found_filtered.size()>5) rcp.rob_num=5;
		  else rcp.rob_num=found_filtered.size();
		  rcp.exist_rob_flag=true;
		  for(int i=0;i<rcp.rob_num;i++){
		    rcp.rob_cam_pos_x[i]=caculatePos_x(found_filtered[i],w_kevin);
		    rcp.rob_cam_pos_y[i]=caculatePos_y(found_filtered[i],h_kevin);
		  }	    
	  }
	  msg_pub.publish(rcp);
	  rcp=reset_detectState(rcp);
	  
	  if(ifImshow)  imshow("detector", img);
	  if(ifOutputResultvideo)  writer << img;
	  int key = waitKey(30);
	  if (key == 'q' || key == 'Q' || key == 27)
		  break;
	  
	  t = (double)getTickCount() - t;
	  //printf("detection time = %gms\n", t*1000. / cv::getTickFrequency());
	  cout << 1000 / (t*1000. / cv::getTickFrequency()) << endl;
	  
  }
  if (f)  fclose(f);

  capture.release();
  writer.release();
  return 0;
}
