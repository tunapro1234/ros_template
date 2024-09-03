#!/bin/bash
set -e

# usb ile bağlı olan cihazların adreslerini belirle
# bash /root/scripts/usb_link.sh


# Source ROS2 setup
source /opt/ros/humble/setup.bash


echo "Provided arguments: $@"


# Execute the main container command
exec $@

# Keep container running if necessary
# tail -f /dev/null
