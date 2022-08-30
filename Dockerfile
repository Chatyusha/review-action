FROM ubuntu:latest

RUN apt update && apt upgrade -y

RUN apt install sudo

ARG USERNAME=review
ARG PASSWORD=review

RUN useradd -m -s /bin/bash -G sudo $USERNAME
RUN echo $USERNAME:$PASSWORD | chpasswd

RUN apt install -y tzdata locales

RUN locale-gen ja_JP.UTF-8

ENV TZ Asia/Tokyo
ENV LANG ja_JP.UTF-8
ENV LANGUAGE ja_JP:ja

RUN apt install texlive-fonts-extra \
                texlive-fonts-recommended \
                texlive-lang-cjk \
                xdvik-ja -y

RUN apt install ruby
RUN gem install bundler
RUN gem install review
