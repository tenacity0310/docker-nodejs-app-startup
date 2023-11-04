# The base image
FROM node

# setting up the working direectory in the conatiner for the container to run command
WORKDIR /app

# COPY the file locallmy to the /app (working directory) in container
COPY . /app

# Install the dependency
# RUN: the command for iamgebuilding to do; this will be executed when image is created
RUN npm install

#expose the container port
EXPOSE 80

# CMD: the command for container to do; this will NOT be executed when image is created 
CMD ["node", "server.js"]