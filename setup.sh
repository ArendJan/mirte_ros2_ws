#!/bin/bash
set -ex

vcs import < src/ros2.repos src
sudo apt-get update
rm src/mirte-ros-packages/mirte_control/ -rf || true
rosdep update --rosdistro=$ROS_DISTRO
rosdep install --from-paths src --ignore-src -y --rosdistro=$ROS_DISTRO
