FROM node:12-alpine
WORKDIR /app-to-docker
COPY . .
RUN apk add --no-cache python2 g++ make