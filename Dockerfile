FROM 	resin/raspberry-pi-python:latest

COPY 	app/ /app

RUN	chmod +x /app/xmastree.py

RUN 	sudo apt-get update;	\
	sudo apt-get upgrade;	\
	sudo apt-get install python-gpiozero python3-gpiozero;

ENTRYPOINT  /app/xmastree.py
