FROM node:13-alpine

ENV MONGO_DB_USERNAME=admin \
    MONGO_DB_PWD=password

RUN npm install

COPY . /app 

# set default dir so that next commands executes in /home/app dir
WORKDIR /app

# will execute npm install in /home/app because of WORKDIR
RUN npm install
EXPOSE 3000
# no need for /home/app/server.js because of 
CMD node server.js

