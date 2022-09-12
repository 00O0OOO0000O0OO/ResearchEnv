#!/bin/bash -eu

# setup ros environment
source "/opt/ros/$ROS_DISTRO/setup.bash"
source "$WORKDIR/devel/setup.bash"

exec "$@"
