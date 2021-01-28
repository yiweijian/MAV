# CMake generated Testfile for 
# Source directory: /home/nuc/yi/vins/vins_catkin_ws/src/mav_trajectory_generation/mav_trajectory_generation
# Build directory: /home/nuc/yi/vins/vins_catkin_ws/build/mav_trajectory_generation
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_mav_trajectory_generation_gtest_test_polynomial "/home/nuc/yi/vins/vins_catkin_ws/build/mav_trajectory_generation/catkin_generated/env_cached.sh" "/usr/bin/python" "/opt/ros/indigo/share/catkin/cmake/test/run_tests.py" "/home/nuc/yi/vins/vins_catkin_ws/build/mav_trajectory_generation/test_results/mav_trajectory_generation/gtest-test_polynomial.xml" "--return-code" "/home/nuc/yi/vins/vins_catkin_ws/devel/lib/mav_trajectory_generation/test_polynomial --gtest_output=xml:/home/nuc/yi/vins/vins_catkin_ws/build/mav_trajectory_generation/test_results/mav_trajectory_generation/gtest-test_polynomial.xml")
add_test(_ctest_mav_trajectory_generation_gtest_test_polynomial_optimization "/home/nuc/yi/vins/vins_catkin_ws/build/mav_trajectory_generation/catkin_generated/env_cached.sh" "/usr/bin/python" "/opt/ros/indigo/share/catkin/cmake/test/run_tests.py" "/home/nuc/yi/vins/vins_catkin_ws/build/mav_trajectory_generation/test_results/mav_trajectory_generation/gtest-test_polynomial_optimization.xml" "--return-code" "/home/nuc/yi/vins/vins_catkin_ws/devel/lib/mav_trajectory_generation/test_polynomial_optimization --gtest_output=xml:/home/nuc/yi/vins/vins_catkin_ws/build/mav_trajectory_generation/test_results/mav_trajectory_generation/gtest-test_polynomial_optimization.xml")
subdirs("gtest")
