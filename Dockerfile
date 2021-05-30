# Specify a base image
FROM node:alpine
WORKDIR /usr/app

# Install some dependencies
COPY ./package.json ./
RUN npm install -g npm@7.15.0
RUN npm install --save express
COPY ./ ./

# Default command
CMD ["npm","start"]