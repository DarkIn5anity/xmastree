# Python Base Image from https://hub.docker.com/r/arm32v7/python/
FROM arm32v7/python:2.7.13-jessie

# Copy the Python Script to blink LED
COPY app/ /app

# Intall the rpi.gpio python module
RUN pip install --no-cache-dir rpi.gpio gpiozero

# Trigger Python script
CMD ["python", "/app/xmastree.py"]