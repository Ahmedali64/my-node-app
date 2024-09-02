FROM node:18

USER root

WORKDIR /app

COPY package.json ./

RUN npm install
#copy all files from our host to app dir in the container 
COPY . .

EXPOSE 3000
# to run a node js app on terminal we use node + app name 
CMD [ "node","index.js" ]


