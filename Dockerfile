FROM ubuntu:latest
ARG DEBIAN_FRONTEND=noninteractive

ENV PATH=/root/.cargo/bin:$PATH

WORKDIR /root

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install --no-install-recommends -y apt-transport-https
RUN apt-get install --no-install-recommends -y ca-certificates
RUN apt-get install --no-install-recommends -y gnupg
RUN apt-get install --no-install-recommends -y curl
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
RUN apt-get install --no-install-recommends -y mono-devel
RUN apt-get install --no-install-recommends -y cmake
RUN apt-get install --no-install-recommends -y lynx 
RUN apt-get install --no-install-recommends -y git 
RUN apt-get install --no-install-recommends -y screen 
RUN apt-get install --no-install-recommends -y zip 
RUN apt-get install --no-install-recommends -y unzip 
RUN apt-get install --no-install-recommends -y nano 
RUN apt-get install --no-install-recommends -y ffmpeg
RUN apt-get install --no-install-recommends -y pandoc
RUN apt-get install --no-install-recommends -y openssh-client 
RUN apt-get install --no-install-recommends -y neofetch
RUN apt-get install --no-install-recommends -y upx

RUN curl https://sh.rustup.rs -sSf | sh -s -- -y


RUN echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
RUN curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key --keyring /usr/share/keyrings/cloud.google.gpg add -
RUN apt-get update
RUN apt-get install --no-install-recommends -y google-cloud-sdk
RUN apt-get install --no-install-recommends -y google-cloud-sdk-app-engine-python
RUN apt-get install --no-install-recommends -y google-cloud-sdk-app-engine-python-extras
RUN apt-get install --no-install-recommends -y google-cloud-sdk-app-engine-java
RUN apt-get install --no-install-recommends -y google-cloud-sdk-app-engine-go
RUN apt-get install --no-install-recommends -y google-cloud-sdk-bigtable-emulator
RUN apt-get install --no-install-recommends -y google-cloud-sdk-cbt
RUN apt-get install --no-install-recommends -y google-cloud-sdk-cloud-build-local
RUN apt-get install --no-install-recommends -y google-cloud-sdk-datalab
RUN apt-get install --no-install-recommends -y google-cloud-sdk-datastore-emulator
RUN apt-get install --no-install-recommends -y google-cloud-sdk-firestore-emulator
RUN apt-get install --no-install-recommends -y google-cloud-sdk-pubsub-emulator
RUN apt-get install --no-install-recommends -y kubectl

RUN apt-get install --no-install-recommends -y zsh 
RUN apt-get install --no-install-recommends -y git 
RUN apt-get install --no-install-recommends -y curl


RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
RUN sed -i -e 's/ZSH_THEME=.*/ZSH_THEME="af-magic"/g' $HOME/.zshrc
ENTRYPOINT [ "/bin/zsh" ]
