
# create the base image
FROM node:alpine

WORKDIR /usr/app
# run or install dependencies
COPY ./package.json ./ 

RUN npm install

COPY ./ ./
# run command and tell what this image is going to do in container
CMD ["npm", "start"]