FROM node:18-slim

ENV SHELL /bin/bash

RUN apt update
RUN apt upgrade -y
RUN apt install -y make vim zip unzip tree git

# Clean up
RUN apt-get autoremove -y \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*

EXPOSE 8000