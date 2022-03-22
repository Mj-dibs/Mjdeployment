FROM node:14.17.3-alpine


# Create app directory
RUN mkdir -p /usr/src/user-service

WORKDIR /usr/src/user-service


COPY package.json /usr/src/user-service/

RUN npm install

# Bundle app source
COPY . /usr/src/user-service


EXPOSE 3000


CMD ["npm", "start"] 
