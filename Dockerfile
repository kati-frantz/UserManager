# the base image to use (official nodejs docker image)
FROM node:carbon
# The working directory in container
WORKDIR /usr/src/app
# copy package.json and package.json to working directory
COPY package*.json ./
# install project dependencies for production only
RUN npm install --only=production
# copy source files from currect directory to working directory in container
COPY . .
# expose the application on port 8080
EXPOSE 8080
# start the nodejs application
CMD [ "npm", "start" ]
