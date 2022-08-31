FROM ubuntu:latest

RUN apt update && apt upgrade -y

RUN apt install -y sudo

ARG USERNAME=review
ARG PASSWORD=review

RUN useradd -m -s /bin/bash -G sudo $USERNAME
RUN echo $USERNAME:$PASSWORD | chpasswd

RUN apt install -y tzdata locales

RUN locale-gen ja_JP.UTF-8

ENV TZ Asia/Tokyo
ENV LANG ja_JP.UTF-8
ENV LANGUAGE ja_JP:ja

RUN apt install -y \
        texlive-lang-japanese \
        texlive-latex-recommended \
        texlive-fonts-extra

RUN apt install ruby
RUN gem install bundler
RUN gem install review

ENTRYPOINT ["./entrypoint.sh"]
