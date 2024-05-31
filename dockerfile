FROM node:16-alpine

EXPOSE 3000

COPY /app/bootcamp-node-project-*.tgz /usr/app/

WORKDIR /usr/app/
 
RUN tar -zxvf bootcamp-node-project-*.tgz 

COPY /app/package.json /usr/app/package

WORKDIR  /usr/app/package

RUN npm install

CMD ["node","server.js"]
