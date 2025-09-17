FROM node:12-alpine
WORKDIR /app-to-docker
COPY . .
RUN yarn install 
RUN apk add --no-cache python2 g++ make
EXPOSE 3000
CMD [ "node", "src/index.js" ]