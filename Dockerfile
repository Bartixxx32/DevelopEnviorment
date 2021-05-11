FROM ubuntu:latest
ARG DEBIAN_FRONTEND=noninteractive
RUN apt update
RUN apt-get install --no-install-recommends -y aria2 nload htop gt5 nodejs npm python3 python3-pip build-essential manpages-dev default-jdk default-jre gradle golang rustc lynx git screen zip unzip nano ffmpeg
