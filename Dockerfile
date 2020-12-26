FROM ubuntu:18.04

RUN apt update -y -o Acquire::Check-Valid-Until=false -o Acquire::Check-Date=false && apt upgrade -y -o Acquire::Check-Valid-Until=false -o Acquire::Check-Date=false
RUN apt install -y wget
RUN wget https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
RUN dpkg -i packages-microsoft-prod.deb
RUN apt update -y -o Acquire::Check-Valid-Until=false -o Acquire::Check-Date=false && apt upgrade -y -o Acquire::Check-Valid-Until=false -o Acquire::Check-Date=false
RUN apt install -y apt-transport-https
RUN apt install -y aspnetcore-runtime-5.0