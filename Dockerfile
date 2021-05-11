FROM kalilinux/kali-rolling
RUN apt update
RUN apt install kali-linux-default kali-tools-top10 kali-linux-large -y
