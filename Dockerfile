
# Pull base image
ARG distro=stretch
FROM resin/rpi-raspbian:$distro

COPY apps/ /

RUN sudo apt-get install python-gpiozero python3-gpiozero

ENTRYPOINT  /apps/xmastree.py
