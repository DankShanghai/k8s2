#Choose an official image runtime as base image
FROM node:alpine 

#Set the working directory inside the container
WORKDIR /app

#Copy the package.json and package-lock.json files to the working directory
COPY package.json package-lock.json ./

#Expose the port on which the application will run
EXPOSE 3000

#Install the dependencies
RUN npm install --force

#Copy the rest of the application code tot he working directory
COPY . ./

#Define the command to start the application
CMD ["npm", "start"]