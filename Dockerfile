FROM node:20-alpine
WORKDIR /app-to-docker
COPY . .
RUN apk add --no-cache python3 g++ make
RUN yarn install 
EXPOSE 3000
CMD [ "node", "src/index.js" ]