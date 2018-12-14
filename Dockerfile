
# Pull base image
ARG distro=stretch
FROM resin/rpi-raspbian:$distro

RUN sudo apt-get install python-gpiozero python3-gpiozero

