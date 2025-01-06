FROM debian:latest
USER root

# LABEL wungus
# MAINTAINER Carson
# ADD . /home/user/opencv_env_proj
WORKDIR /home/root
RUN apt update && apt install -y cmake g++ wget unzip net-tools openssh-server vim

RUN wget -O opencv.zip https://github.com/opencv/opencv/archive/4.x.zip 
RUN unzip opencv.zip
RUN mkdir -p build
WORKDIR /home/root/build
RUN cmake ../opencv-4.x
RUN cmake --build .