FROM buildpack-deps:xenial

LABEL MAINTAINER="KML VISION, devops@kmlvision.com"

# install chromium and export the binary file for testing
RUN apt-get update -qq && \
  apt-get install -y -qq \
  python3 \
  python3-dev \
  python3-pip \
  python3-tk \
  libinsighttoolkit4-dev \
  openmpi-bin && \
  # put this here so that imgaug finds it from requirements
  pip3 install opencv-python && \
