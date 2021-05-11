FROM ubuntu:latest
ARG DEBIAN_FRONTEND=noninteractive
RUN apt update
RUN apt-get install --no-install-recommends -y aria2 
RUN apt-get install --no-install-recommends -y htop
RUN apt-get install --no-install-recommends -y gt5 
RUN apt-get install --no-install-recommends -y nodejs 
RUN apt-get install --no-install-recommends -y npm 
RUN apt-get install --no-install-recommends -y python3 
RUN apt-get install --no-install-recommends -y python3-pip 
RUN apt-get install --no-install-recommends -y build-essential 
RUN apt-get install --no-install-recommends -y manpages-dev 
RUN apt-get install --no-install-recommends -y default-jdk 
RUN apt-get install --no-install-recommends -y default-jre 
RUN apt-get install --no-install-recommends -y gradle 
RUN apt-get install --no-install-recommends -y golang 
RUN apt-get install --no-install-recommends -y rustc 
RUN apt-get install --no-install-recommends -y lynx 
RUN apt-get install --no-install-recommends -y git 
RUN apt-get install --no-install-recommends -y screen 
RUN apt-get install --no-install-recommends -y zip 
RUN apt-get install --no-install-recommends -y unzip 
RUN apt-get install --no-install-recommends -y nano 
RUN apt-get install --no-install-recommends -y ffmpeg
