############################################
# Dockerfile to build Sample Application
# For AWS ECS Service
############################################

# Set base image to python
FROM node:8.7.0-alpine

# File Author / Maintainer
MAINTAINER Timmy Timm

# Copy source file and python req's
COPY . /usr/src/app/

WORKDIR /usr/src/app/

# Install requirements
RUN npm install

EXPOSE 8088

CMD ["node", "/usr/src/app/app.js"]
