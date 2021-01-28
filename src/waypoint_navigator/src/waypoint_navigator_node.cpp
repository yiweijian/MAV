/*
 * Copyright (c) 2017, Marija Popovic, ASL, ETH Zurich, Switzerland
 * Copyright (c) 2017, Inkyu Sa, ASL, ETH Zurich, Switzerland
 * Copyright (c) 2016, Raghav Khanna, ASL, ETH Zurich, Switzerland
 * Copyright (c) 2015, Enric Galceran, ASL, ETH Zurich, Switzerland
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#include <visualization_msgs/Marker.h>
#include <visualization_msgs/MarkerArray.h>

#include <ros/package.h>
#include <sensor_msgs/NavSatFix.h>
#include <boost/math/constants/constants.hpp>
#include <cmath>
#include <cstdio>
#include <cstdlib>
#include <ctime>
#include <fstream>
#include <iostream>

#include <waypoint_navigator/waypoint_navigator_node.h>
#include <opencv2/opencv.hpp>
#include <opencv2/tracking.hpp>
#include "/home/nuc/yi/opencv3.4/opencv_contrib-3.4.6/modules/tracking/include/opencv2/tracking.hpp"
#include "/opt/ros/indigo/include/sensor_msgs/Image.h"
#include "/opt/ros/indigo/include/sensor_msgs/image_encodings.h"
#include "/usr/include/eigen3/Eigen/Core"
#include "/usr/include/eigen3/Eigen/Dense"
#include "/usr/include/eigen3/Eigen/SVD"

namespace waypoint_navigator {
const double WaypointNavigatorNode::kCommandTimerFrequency = 5.0;
const double WaypointNavigatorNode::kWaypointAchievementDistance = 0.5;
const double WaypointNavigatorNode::kIntermediatePoseTolerance = 0.1;
const int WaypointNavigatorNode::kDimensions = 3;
const int WaypointNavigatorNode::kDerivativeToOptimize =
    mav_trajectory_generation::derivative_order::ACCELERATION;
const int WaypointNavigatorNode::kPolynomialCoefficients = 10;


cv::Mat goalImage;
cv::Mat goalDepthImage;
cv::Point goal_location(0,0);
volatile bool flag_color_start = false;
volatile bool flag_depth_start = false;
volatile bool track_ok = false;
volatile bool track_ok_update = false;
//volatile cv::Rect2d
cv::Ptr<cv::Tracker> tracker = cv::TrackerKCF::create();
cv::Rect2d ROI;

    //矩阵求广义逆
    Eigen::MatrixXd eigen_inverse(Eigen::MatrixXd & origin, const float er = 0) {
        // 进行svd分解
        Eigen::JacobiSVD<Eigen::MatrixXd> svd_holder(origin,
                                                     Eigen::ComputeThinU |
                                                     Eigen::ComputeThinV);
        // 构建SVD分解结果
        Eigen::MatrixXd U = svd_holder.matrixU();
        Eigen::MatrixXd V = svd_holder.matrixV();
        Eigen::MatrixXd D = svd_holder.singularValues();

        // 构建S矩阵
        Eigen::MatrixXd S(V.cols(), U.cols());
        S.setZero();

        for (unsigned int i = 0; i < D.size(); ++i) {

            if (D(i, 0) > er) {
                S(i, i) = 1 / D(i, 0);
            } else {
                S(i, i) = 0;
            }
        }

        // pinv_matrix = V * S * U^T
        return V * S * U.transpose();
    }

    Eigen::MatrixXd computelocation(uint16_t z,double x,double y){
    //   K*T*Pc=ZPuv
//        pose_sensor/init/q_ic/x: 0.017726716928
//        pose_sensor/init/q_ic/y: 0.0249061038484
//        pose_sensor/init/q_ic/z: 0.00265811980538
//        pose_sensor/init/q_ic/w: 0.999529081066
//
//        pose_sensor/init/p_ic/x: -0.0473607635524
//        pose_sensor/init/p_ic/y: -0.00867546218896
//        pose_sensor/init/p_ic/z: -0.00251798129901

    Eigen::Quaterniond q(0.999529081066, 0.017726716928,0.0249061038484 , 0.00265811980538);
    q.normalize();
    Eigen:: Vector3d  t(-0.0473607635524, -0.00867546218896,-0.00251798129901);
    Eigen::Matrix3d R = q.toRotationMatrix();

//
//        fx: 615.308435134
//        fy: 614.028765693
//        cx: 326.04609467
//        cy: 249.953885229
//
    double fx = 615.308435134,
             fy = 614.028765693,
                 cx = 326.04609467,
                     cy = 249.953885229;
    Eigen::Matrix<double,3,1> result;
    Eigen::Matrix3d K_matrix;
    Eigen::MatrixXd T_matrix;
    T_matrix =Eigen::MatrixXd ::Random(3,4);
   //Eigen::Matrix<double,3,4> T_matrix;
    Eigen::Matrix<double,3,1> Puv;
    Puv << x,y,1;
    K_matrix << fx,0,cx,0,fy,cy,0,0,1;
    T_matrix <<  R(0,0),R(0,1),R(0,2), t[0],
                     R(1,0),R(1,1),R(1,2),t[1],
                         R(2,0),R(2,1),R(2,2),t[2] ;
    //4*1 matrix
    //result = eigen_inverse(T_matrix)*K_matrix.inverse()*z*Puv;
    //result /= result[3];
    //result = R.transpose()* (K_matrix.inverse()*z*Puv - t);
    //result /= result[3];
        R(0,0)=0,R(0,1)=0,R(0,2)=1;
        R(1,0)=-1,R(1,1)=0,R(1,2)=0;
        R(2,0)=0,R(2,1)=-1,R(2,2)=0;
    Eigen::Matrix<double,3,1>  Pc = K_matrix.inverse()*z*Puv;
    Pc=Pc*0.001f;
    std::cout<<  " pc -----\n "<<Pc.transpose()<<std::endl;

    std::cout << "R = -----\n"<< R<<std::endl;
    result = R * (Pc + t);

    //std::cout<<eigen_inverse(T_matrix)<<std::endl;
   //std::cout<<K_matrix.inverse()<<std::endl;
    std::cout<<   "result = -----\n"<<  result<<std::endl;
    return result;
}

void goal_depthCallback(
            const sensor_msgs::ImageConstPtr &depth_img){
       // cv::Mat pic(depth_img->height,depth_img->width,CV_16UC1,(void*)depth_img->data.data());
        cv::Mat pic(depth_img->height,depth_img->width,CV_16U,(void*)depth_img->data.data());
        if(flag_depth_start){
            goalDepthImage = pic.clone();
            std::cout<<"   flag_depth_start   "<<std::endl;
 //           cv::imshow("goalDepthImage",goalDepthImage);
            flag_depth_start = false;
        }
//        std::cout<<pic.at<uint16_t>(240,320)<<std::endl;
//       cv::imshow("realsense d435i  depth", pic);
        cv::waitKey(5);
    };

void goal_camCallback(
        const sensor_msgs::ImageConstPtr &img_msg) {
        cv::Mat frame(img_msg->height,img_msg->width,CV_8UC3,(void*)img_msg->data.data());
        cvtColor(frame,frame,cv::COLOR_BGR2RGB);
        if(flag_color_start){
           // cv::Mat goalClone(img_msg->height,img_msg->width,CV_8UC3,(void*)img_msg->data.data());
            goalImage = frame.clone();
            std::cout<<"   flag_color_start   "<<std::endl;
           // cv::imshow("goalImage",goalImage);
            flag_color_start = false;
        }
        //std::cout<<"track_ok     :     " << tarck_ok <<std::endl;
         if(track_ok_update){

             std::cout << "tracker->update    " << tracker->update(frame,ROI) << std::endl;
             cv::rectangle(frame,ROI,cv::Scalar(255,0,0),2,8,0);
             cv::imshow("ROI   color", frame);
         }
        if(track_ok) {
            tracker = cv::TrackerKCF::create();
            std::cout << "tracker->init    " << tracker->init(frame, ROI) << std::endl;
            track_ok = false;
            track_ok_update = true;
        }

        cv::imshow("realsense d435i   color", frame);
        cv::waitKey(5);
    }

  /*  void track(cv::Rect2d bbox){
        cv::Mat frame;
        tracker->init(frame,ROI);
    }*/
WaypointNavigatorNode::WaypointNavigatorNode(const ros::NodeHandle& nh,
                                             const ros::NodeHandle& nh_private)
    : nh_(nh),
      nh_private_(nh_private),
      got_odometry_(true)

{
  loadParameters();

  odometry_subscriber_ = nh_.subscribe(
      "odometry", 1, &WaypointNavigatorNode::odometryCallback, this);

    goal_cam_subscriber_ = nh_.subscribe(
            "/camera/color/image_raw", 1, goal_camCallback);
    goal_depth_subscriber_ = nh_.subscribe<sensor_msgs::Image>(
            "/camera/aligned_depth_to_color/image_raw", 10, goal_depthCallback);

  pose_publisher_ = nh_.advertise<geometry_msgs::PoseStamped>(
      mav_msgs::default_topics::COMMAND_POSE, 1);
  //pose_publisher_ = nh_.advertise<trajectory_msgs::MultiDOFJointTrajectory>(
  //    mav_msgs::default_topics::COMMAND_TRAJECTORY, 1);
  
  path_segments_publisher_ =
      nh_.advertise<mav_planning_msgs::PolynomialTrajectory4D>("path_segments", 1);

  // Visualization.
  path_points_marker_publisher_ = nh_.advertise<visualization_msgs::Marker>(
      "waypoint_navigator_path_points_marker", 0);
  path_marker_publisher_ = nh_.advertise<visualization_msgs::Marker>(
      "waypoint_navigator_path_marker", 0);
  polynomial_publisher_ = nh_.advertise<visualization_msgs::MarkerArray>(
      "waypoint_navigator_polynomial_markers", 1, true);

  visualize_service_ = nh_.advertiseService(
      "visualize_path", &WaypointNavigatorNode::visualizePathCallback, this);
  start_service_ = nh_.advertiseService(
      "execute_path", &WaypointNavigatorNode::executePathCallback, this);
  takeoff_service_ = nh_.advertiseService(
      "takeoff", &WaypointNavigatorNode::takeoffCallback, this);
  land_service_ =
      nh_.advertiseService("land", &WaypointNavigatorNode::landCallback, this);
  abort_path_service_ = nh_.advertiseService(
      "abort_path", &WaypointNavigatorNode::abortPathCallback, this);
  new_path_service_ = nh_.advertiseService(
      "execute_path_from_file",
      &WaypointNavigatorNode::executePathFromFileCallback, this);
  waypoint_service_ = nh_.advertiseService(
      "go_to_waypoint", &WaypointNavigatorNode::goToWaypointCallback, this);
  waypoints_service_ = nh_.advertiseService(
      "go_to_waypoints", &WaypointNavigatorNode::goToWaypointsCallback, this);
  pose_waypoints_service_ = nh_.advertiseService(
      "go_to_pose_waypoints", &WaypointNavigatorNode::goToPoseWaypointsCallback, this);
  height_service_ = nh_.advertiseService(
      "go_to_height", &WaypointNavigatorNode::goToHeightCallback, this);

  // Wait until GPS reference parameters are initialized.
  while (!geodetic_converter_.isInitialised() && coordinate_type_ == "gps") {
    LOG_FIRST_N(INFO, 1) << "Waiting for GPS reference parameters...";

    double latitude;
    double longitude;
    double altitude;

    if (nh_private_.getParam("/gps_ref_latitude", latitude) &&
        nh_private_.getParam("/gps_ref_longitude", longitude) &&
        nh_private_.getParam("/gps_ref_altitude", altitude)) {
      geodetic_converter_.initialiseReference(latitude, longitude, altitude);
    } else {
      LOG(INFO) << "GPS reference not ready yet, use set_gps_reference_node to "
                   "set it.";
      ros::Duration(0.5).sleep();
    }
  }

LOG(INFO)<< "  hello world...hello world...";

  LOG(INFO)
      << "Waypoint navigator ready. Call 'execute_path' service to get going.";

     
}

void WaypointNavigatorNode::loadParameters() {
  CHECK(
      nh_private_.getParam("coordinate_type", coordinate_type_) &&
      nh_private_.getParam("path_mode", path_mode_) &&
      nh_private_.getParam("heading_mode", heading_mode_) &&
      nh_private_.getParam("reference_speed", reference_speed_) &&
      nh_private_.getParam("reference_acceleration", reference_acceleration_) &&
      nh_private_.getParam("takeoff_height", takeoff_height_) &&
      nh_private_.getParam("landing_height", landing_height_) &&
      nh_private_.getParam("mav_name", mav_name_) &&
      nh_private_.getParam("frame_id", frame_id_) &&
      nh_private_.getParam("intermediate_poses", intermediate_poses_))
      << "Error loading parameters!";

  if (coordinate_type_ == "gps" || coordinate_type_ == "enu") {
  } else {
    LOG(FATAL) << ("Unknown coordinate type - please enter 'gps' or 'enu'.");
  }

  if (path_mode_ == "poses" || path_mode_ == "polynomial") {
  } else {
    LOG(FATAL) << "Unknown path type - please enter 'poses', or 'trajectory'.";
  }

  if (heading_mode_ == "auto" || heading_mode_ == "manual" ||
      heading_mode_ == "zero") {
  } else {
    LOG(FATAL) << "Unknown heading alignment mode - please enter 'auto', "
                  "'manual', or 'zero'.";
  }

  if (intermediate_poses_) {
    CHECK(nh_private_.getParam("intermediate_pose_separation",
                               intermediate_pose_separation_))
        << "Cannot set intermediate poses without an intermediate pose "
           "separation.";
  }
}

    void WaypointNavigatorNode::findSquares(const cv::Mat &image, std::vector <std::vector<cv::Point>> &squares) {
        squares.clear();

        cv::Mat pyr, timg, gray0(image.size(), CV_8U), gray;

        // down-scale and upscale the image to filter out the noise
        pyrDown(image, pyr, cv::Size(image.cols / 2, image.rows / 2));
        pyrUp(pyr, timg, image.size());
        std::vector <std::vector<cv::Point>> contours;

        // find squares in every color plane of the image
        for (int c = 0; c < 3; c++) {
            int ch[] = {c, 0};
            cv::mixChannels(&timg, 1, &gray0, 1, ch, 1);

            // try several threshold levels
            for (int l = 0; l < N; l++) {
                // hack: use Canny instead of zero threshold level.
                // Canny helps to catch squares with gradient shading
                if (l == 0) {
                    // apply Canny. Take the upper threshold from slider
                    // and set the lower to 0 (which forces edges merging)
                    cv::Canny(gray0, gray, 0, thresh, 5);
                    // dilate canny output to remove potential
                    // holes between edge segments
                    cv::dilate(gray, gray, cv::Mat(), cv::Point(-1, -1));
                } else {
                    // apply threshold if l!=0:
                    //     tgray(x,y) = gray(x,y) < (l+1)*255/N ? 255 : 0
                    gray = gray0 >= (l + 1) * 255 / N;
                }

                // find contours and store them all as a list
                cv::findContours(gray, contours, cv::RETR_LIST, cv::CHAIN_APPROX_SIMPLE);

                std::vector <cv::Point> approx;

                // test each contour
                for (size_t i = 0; i < contours.size(); i++) {

                    size_t count = contours[i].size();
                    if (count < 10 || count > 150) continue;
                    // approximate contour with accuracy proportional
                    // to the contour perimeter
                    cv::approxPolyDP(cv::Mat(contours[i]), approx, cv::arcLength(cv::Mat(contours[i]), true) * 0.02,
                                     true);

                    // square contours should have 4 vertices after approximation
                    // relatively large area (to filter out noisy contours)
                    // and be convex.
                    // Note: absolute value of an area is used because
                    // area may be positive or negative - in accordance with the
                    // contour orientation
                    if (approx.size() == 4 &&
                        fabs(contourArea(cv::Mat(approx))) > 1000 &&
                        cv::isContourConvex(cv::Mat(approx))) {
                        double maxCosine = 0;

                        for (int j = 2; j < 5; j++) {
                            // find the maximum cosine of the angle between joint edges
                            double cosine = fabs(angle(approx[j % 4], approx[j - 2], approx[j - 1]));
                            maxCosine = MAX(maxCosine, cosine);
                        }

                        // if cosines of all angles are sma
                        // (all angles are ~90 degree) then write quandrange
                        // vertices to resultant sequence
                        if (maxCosine < 0.3)
                            squares.push_back(approx);
                    }
                }
            }
        }
    }


    void WaypointNavigatorNode::drawSquares(cv::Mat &image, const std::vector <std::vector<cv::Point>> &squares) {
        for (size_t i = 0; i < squares.size(); i++) {
            const cv::Point *p = &squares[i][0];
            int n = (int) squares[i].size();
            cv::polylines(image, &p, &n, 1, true, cv::Scalar(0, 255, 0), 1, cv::LINE_AA);
        }

       // cv::imshow("Square Detection Demo", image);
    }

    double WaypointNavigatorNode::angle(cv::Point pt1, cv::Point pt2, cv::Point pt0) {
        double dx1 = pt1.x - pt0.x;
        double dy1 = pt1.y - pt0.y;
        double dx2 = pt2.x - pt0.x;
        double dy2 = pt2.y - pt0.y;
        return (dx1 * dx2 + dy1 * dy2) / sqrt((dx1 * dx1 + dy1 * dy1) * (dx2 * dx2 + dy2 * dy2) + 1e-10);
    }

    cv::Rect2d WaypointNavigatorNode::computeGoal() {

        cv::Rect2d roi;

        goal_east = 0;
        goal_north = 1.0;
        goal_height = 1.0;
        flag_color_start = true;
        flag_depth_start = true;

       // cv::namedWindow("Square Detection Demo");
        //cv::imshow("Square Detection Demo",goalImage)
        std::vector <std::vector<cv::Point>> squares;
//        VideoCapture cap("1.avi");
        for (int i = 0; i < 1; i++) {
  //          cv::Mat image = cv::imread("/home/nuc/yi/useOpencv/findSquares/pic3.jpg", 1);

            if (goalImage.empty()&&goalDepthImage.empty()) {
                std::cout << "Couldn't load " << std::endl;
                continue;
            }
            findSquares(goalImage, squares);
            drawSquares(goalImage, squares);

            if(!squares.empty()){
                goal_east = (squares[i][0].x + squares[i][1].x + squares[i][2].x + squares[i][3].x) / 4;
                goal_north = (squares[i][0].y + squares[i][1].y + squares[i][2].y + squares[i][3].y) / 4;
                cv::circle(goalImage, cv::Point(goal_east, goal_north), 8, cv::Scalar(0, 0, 255),6);

                //目标跟踪框
                cv::Rect2d temp(squares[i][0],squares[i][2]);
                roi = temp;
                cv::Point goal_location(goal_east,goal_north);
                //输出目标点的深度值
                uint16_t z_distance = goalDepthImage.at<uint16_t>(goal_east,goal_north);
                //奇异值求广义逆，计算世界坐标系下的目标点
                Eigen::MatrixXd Pw = computelocation(z_distance,goal_east,goal_north);


                goal_east = Pw(0,0);
                goal_north = Pw(1,0);
                goal_height = Pw(2,0);

                //左边世界坐标系，右边相机坐标系
                //   相机深度Z(goal_height)为世界坐标系的X轴

                std::cout<<  "     Z   " << z_distance <<std::endl;
                std::cout<<  "  Pw(3,0)   " << Pw(3,0) <<std::endl;
                std::cout<<  "  goal_east   " << goal_east <<std::endl;
                std::cout<<  "  goal_north   " << goal_north <<std::endl;
                std::cout<<  "  goal_height   " << goal_height <<std::endl;

                std::cout<<"*********************......................****"<<std::endl;
                std::cout<<"*********************......................****"<<std::endl;
                std::cout<<"*********************......................****"<<std::endl;

                std::cout<<goal_east<<std::endl;
                std::cout<<goal_north<<std::endl;

            }

            cv::imshow("goal",goalImage);
            cv::waitKey(5) ;

            std::cout<<"load finish"<<std::endl;

        }
        std::cout<<"compute goal finish"<<std::endl;
        return roi;
    }


    bool WaypointNavigatorNode::addGoalToPath() {

        std::vector<double> easting;
        std::vector<double> northing;
        std::vector<double> height;
        std::vector<double> heading;

        track_ok_update = false;

        ROI = computeGoal();
        std::cout<< "roi    "<<ROI<<std::endl;

        //std::cout<< "tracker->init    "<< tracker->init(goalImage,ROI)<<std::endl;
        track_ok = true;
        std::cout<<"   "<<goal_east<<"   "<<goal_north<<std::endl;

        easting.push_back(goal_east);
        northing.push_back(goal_north);
        height.push_back(goal_height);


        if (heading_mode_ == "manual" && !nh_private_.getParam("heading", heading)) {
            LOG(FATAL) << "Heading in manual mode is unspecified!";
        }

        // Check for valid trajectory inputs.
        if (!(easting.size() == northing.size() &&
              northing.size() == height.size())) {
            LOG(FATAL) << "Error: path parameter arrays are not the same size";
        }
        if (heading_mode_ == "manual" && !(height.size() == heading.size())) {
            LOG(FATAL) << "Error: path parameter arrays are not the same size";
        }

        coarse_waypoints_.clear();
        addCurrentOdometryWaypoint();

        // Add (x,y,z) co-ordinates from file to path.
        for (size_t i = 0; i < easting.size(); i++) {
            mav_msgs::EigenTrajectoryPoint cwp;
            // GPS path co-ordinates.
            if (coordinate_type_ == "gps") {
                double initial_latitude;
                double initial_longitude;
                double initial_altitude;

                // Convert GPS point to ENU co-ordinates.
                // NB: waypoint altitude = desired height above reference + registered
                // reference altitude.
                geodetic_converter_.getReference(&initial_latitude, &initial_longitude,
                                                 &initial_altitude);
                geodetic_converter_.geodetic2Enu(
                        northing[i], easting[i], (initial_altitude + height[i]),
                        &cwp.position_W.x(), &cwp.position_W.y(), &cwp.position_W.z());
            }
                // ENU path co-ordinates.
            else if (coordinate_type_ == "enu") {
                cwp.position_W.x() = easting[i];
                cwp.position_W.y() = northing[i];
                cwp.position_W.z() = height[i];
            }
            coarse_waypoints_.push_back(cwp);
        }

        // Add heading from file to path.
        for (size_t i = 1; i < coarse_waypoints_.size(); i++) {
            if (heading_mode_ == "manual") {
                coarse_waypoints_[i].setFromYaw(heading[i] * (M_PI / 180.0));
            } else if (heading_mode_ == "auto") {
                // Compute heading in direction towards next point.
                coarse_waypoints_[i].setFromYaw(
                        atan2(coarse_waypoints_[i].position_W.y() -
                              coarse_waypoints_[i - 1].position_W.y(),
                              coarse_waypoints_[i].position_W.x() -
                              coarse_waypoints_[i - 1].position_W.x()));
            } else if (heading_mode_ == "zero") {
                coarse_waypoints_[i].setFromYaw(0.0);
            }
        }

        // As first target point, add current (x,y) position, but with height at
        // that of the first requested waypoint, so that the MAV first adjusts height
        // moving only vertically.
        if (coarse_waypoints_.size() >= 2) {
            mav_msgs::EigenTrajectoryPoint vwp;
            vwp.position_W.x() = odometry_.position_W.x();
            vwp.position_W.y() = odometry_.position_W.y();
            vwp.position_W.z() = coarse_waypoints_[1].position_W.z();
            if (heading_mode_ == "zero") {
                vwp.setFromYaw(0.0);
            } else if (heading_mode_ == "manual") {
                // Do not change heading.
                vwp.orientation_W_B = coarse_waypoints_[0].orientation_W_B;
            }
            coarse_waypoints_.insert(coarse_waypoints_.begin() + 1, vwp);
        }

        // Limit maximum distance between waypoints.
        if (intermediate_poses_) {
            addIntermediateWaypoints();
        }

        LOG(INFO) << "Path loaded from file. Number of points in path: "
                  << coarse_waypoints_.size();

        current_leg_ = 0;
        return true;

    };


bool WaypointNavigatorNode::loadPathFromFile() {
  // Fetch the trajectory from the parameter server.
  std::vector<double> easting;
  std::vector<double> northing;
  std::vector<double> height;
  std::vector<double> heading;

  CHECK(nh_private_.getParam("easting", easting) &&
        nh_private_.getParam("northing", northing) &&
        nh_private_.getParam("height", height))
      << "Error loading path parameters!";

  if (heading_mode_ == "manual" && !nh_private_.getParam("heading", heading)) {
    LOG(FATAL) << "Heading in manual mode is unspecified!";
  }

  // Check for valid trajectory inputs.
  if (!(easting.size() == northing.size() &&
        northing.size() == height.size())) {
    LOG(FATAL) << "Error: path parameter arrays are not the same size";
  }
  if (heading_mode_ == "manual" && !(height.size() == heading.size())) {
    LOG(FATAL) << "Error: path parameter arrays are not the same size";
  }

  coarse_waypoints_.clear();
  addCurrentOdometryWaypoint();

  // Add (x,y,z) co-ordinates from file to path.
  for (size_t i = 0; i < easting.size(); i++) {
    mav_msgs::EigenTrajectoryPoint cwp;
    // GPS path co-ordinates.
    if (coordinate_type_ == "gps") {
      double initial_latitude;
      double initial_longitude;
      double initial_altitude;

      // Convert GPS point to ENU co-ordinates.
      // NB: waypoint altitude = desired height above reference + registered
      // reference altitude.
      geodetic_converter_.getReference(&initial_latitude, &initial_longitude,
                                       &initial_altitude);
      geodetic_converter_.geodetic2Enu(
          northing[i], easting[i], (initial_altitude + height[i]),
          &cwp.position_W.x(), &cwp.position_W.y(), &cwp.position_W.z());
    }
    // ENU path co-ordinates.
    else if (coordinate_type_ == "enu") {
      cwp.position_W.x() = easting[i];
      cwp.position_W.y() = northing[i];
      cwp.position_W.z() = height[i];
    }
    coarse_waypoints_.push_back(cwp);
  }

  // Add heading from file to path.
  for (size_t i = 1; i < coarse_waypoints_.size(); i++) {
    if (heading_mode_ == "manual") {
      coarse_waypoints_[i].setFromYaw(heading[i] * (M_PI / 180.0));
    } else if (heading_mode_ == "auto") {
      // Compute heading in direction towards next point.
      coarse_waypoints_[i].setFromYaw(
          atan2(coarse_waypoints_[i].position_W.y() -
                    coarse_waypoints_[i - 1].position_W.y(),
                coarse_waypoints_[i].position_W.x() -
                    coarse_waypoints_[i - 1].position_W.x()));
    } else if (heading_mode_ == "zero") {
      coarse_waypoints_[i].setFromYaw(0.0);
    }
  }

  // As first target point, add current (x,y) position, but with height at
  // that of the first requested waypoint, so that the MAV first adjusts height
  // moving only vertically.
  if (coarse_waypoints_.size() >= 2) {
    mav_msgs::EigenTrajectoryPoint vwp;
    vwp.position_W.x() = odometry_.position_W.x();
    vwp.position_W.y() = odometry_.position_W.y();
    vwp.position_W.z() = coarse_waypoints_[1].position_W.z();
    if (heading_mode_ == "zero") {
      vwp.setFromYaw(0.0);
    } else if (heading_mode_ == "manual") {
      // Do not change heading.
      vwp.orientation_W_B = coarse_waypoints_[0].orientation_W_B;
    }
    coarse_waypoints_.insert(coarse_waypoints_.begin() + 1, vwp);
  }

  // Limit maximum distance between waypoints.
  if (intermediate_poses_) {
    addIntermediateWaypoints();
  }

  LOG(INFO) << "Path loaded from file. Number of points in path: "
            << coarse_waypoints_.size();

  current_leg_ = 0;
  return true;
}

void WaypointNavigatorNode::addIntermediateWaypoints() {
  for (size_t i = 1; i < coarse_waypoints_.size(); ++i) {
    mav_msgs::EigenTrajectoryPoint wpa = coarse_waypoints_[i - 1];
    mav_msgs::EigenTrajectoryPoint wpb = coarse_waypoints_[i];
    double dist = (wpa.position_W - wpb.position_W).norm();

    // Minimum tolerance between points set to avoid subsequent numerical errors
    // in trajectory optimization.
    while (dist > intermediate_pose_separation_ &&
           dist > kIntermediatePoseTolerance) {
      mav_msgs::EigenTrajectoryPoint iwp;
      iwp.position_W.x() = wpa.position_W.x() +
                           (intermediate_pose_separation_ / dist) *
                               (wpb.position_W.x() - wpa.position_W.x());
      iwp.position_W.y() = wpa.position_W.y() +
                           (intermediate_pose_separation_ / dist) *
                               (wpb.position_W.y() - wpa.position_W.y());
      iwp.position_W.z() = wpa.position_W.z() +
                           (intermediate_pose_separation_ / dist) *
                               (wpb.position_W.z() - wpa.position_W.z());
      iwp.orientation_W_B = wpb.orientation_W_B;
      coarse_waypoints_.insert(coarse_waypoints_.begin() + i, iwp);
      wpa = iwp;
      dist = (wpa.position_W - wpb.position_W).norm();
      i++;
    }
  }
}

void WaypointNavigatorNode::addCurrentOdometryWaypoint() {
  mav_msgs::EigenTrajectoryPoint vwp;
  vwp.position_W = odometry_.position_W;
  vwp.orientation_W_B = odometry_.orientation_W_B;
  coarse_waypoints_.push_back(vwp);
}

void WaypointNavigatorNode::createTrajectory() {
   polynomial_vertices_.clear();
  polynomial_trajectory_.clear();
  yaw_vertices_.clear();
  yaw_trajectory_.clear();
  deletePolynomialMarkers();

  // Create a list of vertices.
  for (size_t i = 0; i < coarse_waypoints_.size(); i++) {
    mav_trajectory_generation::Vertex vertex(kDimensions);
    mav_trajectory_generation::Vertex yaw(1);

    // Position.
    if (i == 0 || i == coarse_waypoints_.size() - 1) {
      vertex.makeStartOrEnd(coarse_waypoints_[i].position_W,
                            mav_trajectory_generation::derivative_order::SNAP);
    } else {
      vertex.addConstraint(
          mav_trajectory_generation::derivative_order::POSITION,
          coarse_waypoints_[i].position_W);
    }
    // Yaw.
    if (i != 0) {
      // Check whether to rotate clockwise or counter-clockwise in yaw.
      double yaw_mod = fmod(
          coarse_waypoints_[i].getYaw() - coarse_waypoints_[i - 1].getYaw(),
          2 * M_PI);
      if (yaw_mod < -M_PI) {
        yaw_mod += 2 * M_PI;
      } else if (yaw_mod > M_PI) {
        yaw_mod -= 2 * M_PI;
      }
      coarse_waypoints_[i].setFromYaw(coarse_waypoints_[i - 1].getYaw() +
                                      yaw_mod);
    }
    yaw.addConstraint(mav_trajectory_generation::derivative_order::ORIENTATION,
                      coarse_waypoints_[i].getYaw());

    polynomial_vertices_.push_back(vertex);
    yaw_vertices_.push_back(yaw);
  }

  // Optimize the polynomial trajectory.
  // Position.
  std::vector<double> segment_times;
  segment_times =
      estimateSegmentTimes(polynomial_vertices_, reference_speed_,
                           reference_acceleration_);

  mav_trajectory_generation::PolynomialOptimization<kPolynomialCoefficients>
      opt(kDimensions);
  opt.setupFromVertices(polynomial_vertices_, segment_times,
                        kDerivativeToOptimize);
  opt.solveLinear();
  opt.getTrajectory(&polynomial_trajectory_);
  // Yaw.
  mav_trajectory_generation::PolynomialOptimization<kPolynomialCoefficients>
      yaw_opt(1);
  yaw_opt.setupFromVertices(yaw_vertices_, segment_times,
                            kDerivativeToOptimize);
  yaw_opt.solveLinear();
  yaw_opt.getTrajectory(&yaw_trajectory_);
}

void WaypointNavigatorNode::publishCommands() {
  if (path_mode_ == "poses") {
    command_timer_ =
        nh_.createTimer(ros::Duration(1.0 / kCommandTimerFrequency),
                        &WaypointNavigatorNode::poseTimerCallback, this);
  } else if (path_mode_ == "polynomial") {
    createTrajectory();
    // Publish the trajectory directly to the trajectory sampler.
    mav_planning_msgs::PolynomialTrajectory4D msg;
    mav_trajectory_generation::Trajectory traj_with_yaw;
    polynomial_trajectory_.getTrajectoryWithAppendedDimension(yaw_trajectory_,
                                                              &traj_with_yaw);
    mav_trajectory_generation::trajectoryToPolynomialTrajectoryMsg(
        traj_with_yaw, &msg);
    path_segments_publisher_.publish(msg);
  }
}

void WaypointNavigatorNode::deletePolynomialMarkers() {
  for (size_t i = 0; i < markers_.markers.size(); ++i) {
    markers_.markers[i].action = visualization_msgs::Marker::DELETE;
  }
  polynomial_publisher_.publish(markers_);
}

bool WaypointNavigatorNode::executePathCallback(
    std_srvs::Empty::Request& request, std_srvs::Empty::Response& response) {
  CHECK(got_odometry_)
      << "No odometry received yet, can't start path following.";
  command_timer_.stop();
  current_leg_ = 0;
  timer_counter_ = 0;

  //CHECK(loadPathFromFile()) << "Path could not be loaded!";
  CHECK(addGoalToPath()) << "Path could not be loaded!";
  // Display the path markers in rviz.
  std_srvs::Empty::Request empty_request;
  std_srvs::Empty::Response empty_response;
  visualizePathCallback(empty_request, empty_response);

  publishCommands();
  LOG(INFO) << "Starting path execution...";
  return true;
}

bool WaypointNavigatorNode::executePathFromFileCallback(
    waypoint_navigator::ExecutePathFromFile::Request& request,
    waypoint_navigator::ExecutePathFromFile::Response& response) {
  // Stop executing the current path.
  std_srvs::Empty::Request empty_request;
  std_srvs::Empty::Response empty_response;
  abortPathCallback(empty_request, empty_response);

  std::string filename_only = request.filename.data;
  std::string path_filename =
      ros::package::getPath("waypoint_navigator") + "/paths/" + filename_only;
  std::string load_command =
      "rosparam load " + path_filename + ".yaml " + ros::this_node::getName();

  if (system(load_command.c_str()) != 0) {
    LOG(ERROR) << "New mission parameters not loaded properly!";
    return false;
  }
  executePathCallback(empty_request, empty_response);
  return true;
}

bool WaypointNavigatorNode::goToWaypointCallback(
    waypoint_navigator::GoToWaypoint::Request& request,
    waypoint_navigator::GoToWaypoint::Response& response) {
  coarse_waypoints_.clear();
  current_leg_ = 0;
  timer_counter_ = 0;
  command_timer_.stop();

  addCurrentOdometryWaypoint();

  // Add the new waypoint.
  mav_msgs::EigenTrajectoryPoint vwp;
  vwp.position_W.x() = request.point.x;
  vwp.position_W.y() = request.point.y;
  vwp.position_W.z() = request.point.z;
  if (heading_mode_ == "zero") {
    vwp.setFromYaw(0.0);
  } else if (sqrt(pow(request.point.y - odometry_.position_W.y(), 2) +
                  pow(request.point.x - odometry_.position_W.x(), 2)) < 0.05) {
    vwp.orientation_W_B = odometry_.orientation_W_B;
  } else {
    vwp.setFromYaw(atan2(request.point.y - odometry_.position_W.y(),
                        request.point.x - odometry_.position_W.x()));
  }
  coarse_waypoints_.push_back(vwp);

  // Limit the maximum distance between waypoints.
  if (intermediate_poses_) {
    addIntermediateWaypoints();
  }

  publishCommands();
  LOG(INFO) << "Going to a new waypoint...";
  return true;
}

bool WaypointNavigatorNode::goToWaypointsCallback(
    waypoint_navigator::GoToWaypoints::Request& request,
    waypoint_navigator::GoToWaypoints::Response& response) {
  coarse_waypoints_.clear();
  current_leg_ = 0;
  timer_counter_ = 0;
  command_timer_.stop();

  addCurrentOdometryWaypoint();

  // Add points to a new path.
  std::vector<geometry_msgs::Point> points = request.points;
  mav_msgs::EigenTrajectoryPoint vwp;
  for (size_t i = 0; i < points.size(); ++i) {
    vwp.position_W.x() = points[i].x;
    vwp.position_W.y() = points[i].y;
    vwp.position_W.z() = points[i].z;
    coarse_waypoints_.push_back(vwp);
  }

  // Add heading to path.
  for (size_t i = 0; i < coarse_waypoints_.size(); i++) {
    if (heading_mode_ == "auto") {
      if (i == 0) {
        continue;
      }
      // Compute heading in direction towards next point.
      coarse_waypoints_[i].setFromYaw(
          atan2(coarse_waypoints_[i].position_W.y() -
                    coarse_waypoints_[i - 1].position_W.y(),
                coarse_waypoints_[i].position_W.x() -
                    coarse_waypoints_[i - 1].position_W.x()));
    }
    // For both 'manual' and 'zero' heading modes, set zero heading.
    else {
      coarse_waypoints_[i].setFromYaw(0.0);
    }
  }

  // Display the path markers in rviz.
  visualization_timer_ =
      nh_.createTimer(ros::Duration(0.1),
                      &WaypointNavigatorNode::visualizationTimerCallback, this);
  publishCommands();
  return true;
}

bool WaypointNavigatorNode::goToPoseWaypointsCallback(
    waypoint_navigator::GoToPoseWaypoints::Request& request,
    waypoint_navigator::GoToPoseWaypoints::Response& response) {
  coarse_waypoints_.clear();
  current_leg_ = 0;
  timer_counter_ = 0;
  command_timer_.stop();

  // Add points to a new path.
  std::vector<geometry_msgs::Pose> waypoints = request.waypoints;
  mav_msgs::EigenTrajectoryPoint vwp;
  for (size_t i = 0; i < waypoints.size(); ++i) {
    vwp.position_W.x() = waypoints[i].position.x;
    vwp.position_W.y() = waypoints[i].position.y;
    vwp.position_W.z() = waypoints[i].position.z;

    vwp.orientation_W_B.x() = waypoints[i].orientation.x;
    vwp.orientation_W_B.y() = waypoints[i].orientation.y;
    vwp.orientation_W_B.z() = waypoints[i].orientation.z;
    vwp.orientation_W_B.w() = waypoints[i].orientation.w;

    if (i==0)
    {
      const double dist_to_end =
        (vwp.position_W - odometry_.position_W).norm();
          
      if (dist_to_end > kWaypointAchievementDistance) {
        LOG(INFO) << "Extra waypoint added because current pose is too far (" << dist_to_end << "m) from the first waypoint.";
        addCurrentOdometryWaypoint();
      }
    }

    coarse_waypoints_.push_back(vwp);
  }

  if(coarse_waypoints_.size() > 1)
  {
    LOG(INFO) << coarse_waypoints_.size()<<" waypoints received.";
    // Display the path markers in rviz.
    visualization_timer_ =
      nh_.createTimer(ros::Duration(0.1),
                      &WaypointNavigatorNode::visualizationTimerCallback, this);
    publishCommands();
  }else{
    LOG(INFO) << " Nothing to do because the destination is too close.";
    return false;
  }

  return true;
}

bool WaypointNavigatorNode::goToHeightCallback(
    waypoint_navigator::GoToHeight::Request& request,
    waypoint_navigator::GoToHeight::Response& response) {
  waypoint_navigator::GoToWaypoint::Request vwp;
  vwp.point.x = odometry_.position_W.x();
  vwp.point.y = odometry_.position_W.y();
  vwp.point.z = request.height.data;
  waypoint_navigator::GoToWaypoint::Response empty_response;
  return goToWaypointCallback(vwp, empty_response);
}

bool WaypointNavigatorNode::landCallback(std_srvs::Empty::Request& request,
                                         std_srvs::Empty::Response& response) {
  waypoint_navigator::GoToWaypoint::Request vwp;
  vwp.point.x = odometry_.position_W.x();
  vwp.point.y = odometry_.position_W.y();
  vwp.point.z = landing_height_;
  waypoint_navigator::GoToWaypoint::Response empty_response;
  return goToWaypointCallback(vwp, empty_response);
}

bool WaypointNavigatorNode::takeoffCallback(
    std_srvs::Empty::Request& request, std_srvs::Empty::Response& response) {
  waypoint_navigator::GoToWaypoint::Request vwp;
  vwp.point.x = odometry_.position_W.x();
  vwp.point.y = odometry_.position_W.y();
  vwp.point.z = odometry_.position_W.z() + takeoff_height_;
  waypoint_navigator::GoToWaypoint::Response empty_response;
  return goToWaypointCallback(vwp, empty_response);
}

bool WaypointNavigatorNode::abortPathCallback(
    std_srvs::Empty::Request& request, std_srvs::Empty::Response& response) {
  coarse_waypoints_.clear();
  polynomial_trajectory_.clear();
  polynomial_vertices_.clear();
  yaw_trajectory_.clear();
  yaw_vertices_.clear();
  visualization_timer_.stop();

  // Stop sending commands to the controller.
  if (path_mode_ == "polynomial") {
    std_srvs::Empty::Request empty_request;
    std_srvs::Empty::Response empty_response;
    ros::ServiceClient client = nh_.serviceClient<std_srvs::Empty::Request>(
        "/" + mav_name_ + "/stop_trajectory_sampling");
    client.call(empty_request, empty_response);
  } else {
    command_timer_.stop();
  }
  LOG(INFO) << "Aborting path execution...";
  return true;
}

bool WaypointNavigatorNode::visualizePathCallback(
    std_srvs::Empty::Request& request, std_srvs::Empty::Response& response) {
  CHECK(got_odometry_) << "No odometry received yet, can't visualize the path.";
  //CHECK(loadPathFromFile()) << "Path could not be loaded!";
   CHECK(addGoalToPath()) << "Path could not be loaded!";

  if (path_mode_ == "polynomial") {
    createTrajectory();
  }

  visualization_timer_ =
      nh_.createTimer(ros::Duration(0.1),
                      &WaypointNavigatorNode::visualizationTimerCallback, this);
  return true;
}

void WaypointNavigatorNode::poseTimerCallback(const ros::TimerEvent&) {
  // Check for leg completion based on distance.
  // If current leg has been completed, go to the next one.
  const double dist_to_end =
      (coarse_waypoints_[current_leg_].position_W - odometry_.position_W)
          .norm();

  if (current_leg_ != coarse_waypoints_.size() - 1 &&
      dist_to_end < kWaypointAchievementDistance) {
    if (current_leg_ == 0) {
      LOG(INFO) << "Going to first waypoint... ";
    } else {
      LOG(INFO) << "Leg " << current_leg_ << " of "
                << coarse_waypoints_.size() - 1 << " completed!";
    }
    current_leg_++;
  }

  geometry_msgs::PoseStamped pose;
  pose.header.seq = timer_counter_;
  pose.header.stamp = ros::Time::now();
  pose.pose.position.x = coarse_waypoints_[current_leg_].position_W.x();
  pose.pose.position.y = coarse_waypoints_[current_leg_].position_W.y();
  pose.pose.position.z = coarse_waypoints_[current_leg_].position_W.z();
  tf::Quaternion orientation = tf::createQuaternionFromRPY(
      0.0, 0.0, coarse_waypoints_[current_leg_].getYaw());
  pose.pose.orientation.x = orientation.x();
  pose.pose.orientation.y = orientation.y();
  pose.pose.orientation.z = orientation.z();
  pose.pose.orientation.w = orientation.w();

  pose_publisher_.publish(pose);
  timer_counter_++;
}

void WaypointNavigatorNode::visualizationTimerCallback(const ros::TimerEvent&) {
  // Fill out markers.
  visualization_msgs::Marker path_points_marker;
  path_points_marker.header.frame_id = frame_id_;
  path_points_marker.header.stamp = ros::Time();
  path_points_marker.ns = "waypoints";
  path_points_marker.id = 0;
  path_points_marker.type = visualization_msgs::Marker::CUBE_LIST;
  path_points_marker.action = visualization_msgs::Marker::ADD;
  path_points_marker.pose.position.x = 0.0;
  path_points_marker.pose.position.y = 0.0;
  path_points_marker.pose.position.z = 0.0;
  path_points_marker.pose.orientation.x = 0.0;
  path_points_marker.pose.orientation.y = 0.0;
  path_points_marker.pose.orientation.z = 0.0;
  path_points_marker.pose.orientation.w = 1.0;
  path_points_marker.scale.x = 0.1;
  path_points_marker.scale.y = 0.1;
  path_points_marker.scale.z = 0.1;
  path_points_marker.color.a = 1.0;
  path_points_marker.color.r = 1.0;
  path_points_marker.color.g = 0.0;
  path_points_marker.color.b = 0.0;

  visualization_msgs::Marker path_marker;
  path_marker.header.frame_id = frame_id_;
  path_marker.header.stamp = ros::Time();
  path_marker.ns = "path";
  path_marker.id = 0;
  path_marker.type = visualization_msgs::Marker::LINE_STRIP;
  path_marker.action = visualization_msgs::Marker::ADD;
  path_marker.pose.position.x = 0.0;
  path_marker.pose.position.y = 0.0;
  path_marker.pose.position.z = 0.0;
  path_marker.pose.orientation.x = 0.0;
  path_marker.pose.orientation.y = 0.0;
  path_marker.pose.orientation.z = 0.0;
  path_marker.pose.orientation.w = 1.0;
  path_marker.scale.x = 0.02;
  path_marker.color.a = 1.0;
  path_marker.color.r = 1.0;
  path_marker.color.g = 1.0;
  path_marker.color.b = 1.0;

  path_points_marker.points.clear();
  path_marker.points.clear();
  for (size_t i = 0; i < coarse_waypoints_.size(); ++i) {
    if (coarse_waypoints_.empty()) {
      continue;
    }
    geometry_msgs::Point pt;
    pt.x = coarse_waypoints_[i].position_W.x();
    pt.y = coarse_waypoints_[i].position_W.y();
    pt.z = coarse_waypoints_[i].position_W.z();
    path_points_marker.points.push_back(pt);
    path_marker.points.push_back(pt);
  }

  path_points_marker_publisher_.publish(path_points_marker);
  path_marker_publisher_.publish(path_marker);

  if (path_mode_ == "polynomial") {
    mav_trajectory_generation::Trajectory traj_with_yaw;
    polynomial_trajectory_.getTrajectoryWithAppendedDimension(yaw_trajectory_,
                                                              &traj_with_yaw);
    mav_trajectory_generation::drawMavTrajectory(traj_with_yaw, 1.0, frame_id_,
                                                 &markers_);
    polynomial_publisher_.publish(markers_);
  }
}

void WaypointNavigatorNode::odometryCallback(
    const nav_msgs::OdometryConstPtr& odometry_message) {
  if (!got_odometry_) {
    got_odometry_ = true;
  }
  mav_msgs::eigenOdometryFromMsg(*odometry_message, &odometry_);
}
}

int main(int argc, char** argv) {
  // Start the logging.
  google::InitGoogleLogging(argv[0]);
  FLAGS_logtostderr = 1;
  // Initialize ROS, start node.
  ros::init(argc, argv, "WaypointNavigatorNode");
  ros::NodeHandle nh("");
  ros::NodeHandle nh_private("~");
  waypoint_navigator::WaypointNavigatorNode waypoint_navigator_node(nh,
                                                                    nh_private);
  ros::spin();
  return 0;
}
