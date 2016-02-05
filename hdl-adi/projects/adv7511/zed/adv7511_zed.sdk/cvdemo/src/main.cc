/*
 * Empty C++ Application
 */
//g++ demo0.cpp -o demo -lopencv_core -lopencv_highgui -lopencv_imgproc


#include "opencv2/opencv.hpp"
#include <iostream>
#include <stdio.h>


using namespace cv;
using namespace std;

int main(int, char**)
{
    cout << " video demo 1.0 " << endl;
    VideoCapture *cap=new VideoCapture(0); // open the default camera
if(!(cap->isOpened())) return -1;

    Mat edges,frame;
    IplImage im1,im2;
//namedWindow("edges",1);

    for(;;)
    {
        (*cap) >> frame; // get a new frame from camera
//imshow("frames", frame);
        im1=frame;
        cvShowImage("input",&im1);
        cvtColor(frame, edges, CV_BGR2GRAY);
        GaussianBlur(edges, edges, Size(7,7), 1.5, 1.5);
        Canny(edges, edges, 0, 30, 3);
//imshow("edges", edges);
        im2=edges;
        cvShowImage("software edges",&im2);
        if(waitKey(1) >= 0) break;
    }
    return 0;
}
