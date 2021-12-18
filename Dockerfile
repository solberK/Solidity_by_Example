FROM ubuntu:latest

RUN apt update -y 
RUN apt install curl vim git net-tools build-essential -y
