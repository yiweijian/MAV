#!/bin/sh

DESTDIR=/home/nuc/wangl/vins_catkin_ws/build/nlopt/nlopt_install make install

cp -r /home/nuc/wangl/vins_catkin_ws/build/nlopt/nlopt_install//home/nuc/wangl/vins_catkin_ws/install/* /home/nuc/wangl/vins_catkin_ws/devel/
