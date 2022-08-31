# Get the base Ubuntu image from Docker Hub
FROM ubuntu:20.04

# Prevent apt from opening interactive dialogues
ARG DEBIAN_FRONTEND=noninteractive

# Update apps on the base image and install needed apps and libraries
RUN apt-get update && apt-get install -y build-essential libboost-all-dev

# Copy the current folder which contains the source code to the Docker image under /usr/src
COPY . /usr/src/verica

# Specify the working directory
WORKDIR /usr/src/verica

# Use Makefile to build the source code
RUN make release

# Cache necessary links from the /lib sub-folder
RUN ldconfig /usr/src/verica/lib

# Run the program
CMD ["./bin/release/verica", "--config=./config/docker.json"]
