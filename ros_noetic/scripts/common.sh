DOCKER_IMAGE_NAME="ros_noetic_ws"
echo "DOCKER_IMAGE_NAME: $DOCKER_IMAGE_NAME"
DOCKER_IMAGE_TAG="dev"
echo "DOCKER_IMAGE_TAG: $DOCKER_IMAGE_TAG"
DOCKER_IMAGE="$DOCKER_IMAGE_NAME:$DOCKER_IMAGE_TAG"
echo "DOCKER_IMAGE: $DOCKER_IMAGE"
WORKDIR="/home/ros_noetic_ws"
echo "WORKDIR: $WORKDIR"
