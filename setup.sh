#!/bin/bash
set -e

vcs import < src/ros2.repos src
sudo apt-get update
rm src/mirte-ros-packages/mirte-control/ -rf || true
rosdep update --rosdistro=$ROS_DISTRO
rosdep install --from-paths src --ignore-src -y --rosdistro=$ROS_DISTRO
