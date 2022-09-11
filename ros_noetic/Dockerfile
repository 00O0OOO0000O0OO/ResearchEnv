FROM ros:noetic-ros-base-focal

ARG IMAGE_VERSION
ENV IMAGE_VERSION $IMAGE_VERSION

ENV WORKDIR /home/ros_noetic_ws
WORKDIR $WORKDIR

# apt install requirements
RUN apt update && apt install --no-install-recommends -y \
    tmux \
    vim \
    python3-pip \
    && rm -rf /var/lib/apt/lists/*

# pip install requirements
COPY ./requirements.txt $WORKDIR/requirements.txt
RUN pip3 install -r $WORKDIR/requirements.txt
RUN ln -s /usr/bin/python3.8 /usr/bin/python

# build
RUN mkdir -p $WORKDIR/src
RUN /bin/bash -c 'source /ros_entrypoint.sh && catkin_make -j8'

# setup python path
ENV PYTHONPATH="$PYTHONPATH:/opt/ros/$ROS_DISTRO/lib/python3/dist-packages"
ENV PYTHONPATH="$PYTHONPATH:$WORKDIR/devel/lib/python3/dist-packages"
ENV PYTHONPATH="$PYTHONPATH:$WORKDIR"

# setup entrypoint
COPY ./entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

# boot command
COPY ./boot $WORKDIR/boot
CMD ["boot/boot_all.sh"]
