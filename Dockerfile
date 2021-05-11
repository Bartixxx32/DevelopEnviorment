FROM ubuntu:latest
ARG DEBIAN_FRONTEND=noninteractive
WORKDIR /root
RUN apt update
RUN apt-get install --no-install-recommends -y apt-transport-https
RUN apt-get install --no-install-recommends -y wget 
RUN apt-get install --no-install-recommends -y aria2 
RUN apt-get install --no-install-recommends -y youtube-dl
RUN apt-get install --no-install-recommends -y htop
RUN apt-get install --no-install-recommends -y gt5 
RUN apt-get install --no-install-recommends -y nodejs 
RUN apt-get install --no-install-recommends -y npm 
RUN apt-get install --no-install-recommends -y python3 
RUN apt-get install --no-install-recommends -y python3-pip 
RUN apt-get install --no-install-recommends -y build-essential 
RUN apt-get install --no-install-recommends -y default-jdk 
RUN apt-get install --no-install-recommends -y default-jre 
RUN apt-get install --no-install-recommends -y gradle 
RUN apt-get install --no-install-recommends -y golang 
RUN apt-get install --no-install-recommends -y rustc 
RUN apt-get install --no-install-recommends -y cmake
RUN apt-get install --no-install-recommends -y lynx 
RUN apt-get install --no-install-recommends -y git 
RUN apt-get install --no-install-recommends -y screen 
RUN apt-get install --no-install-recommends -y zip 
RUN apt-get install --no-install-recommends -y unzip 
RUN apt-get install --no-install-recommends -y nano 
RUN apt-get install --no-install-recommends -y ffmpeg
RUN apt-get install --no-install-recommends -y pandoc

RUN wget https://packages.microsoft.com/config/ubuntu/20.10/packages-microsoft-prod.deb -O packages-microsoft-prod.deb ; dpkg -i packages-microsoft-prod.deb ; rm -r packages-microsoft-prod.deb
RUN apt-get install -y dotnet-sdk-5.0
