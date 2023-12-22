# Use an official Node runtime as a parent image
FROM node:14-alpine

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy the app's source code to the working directory
COPY . .

# Expose port 3000 to the outside world
EXPOSE 3000

# Define the command to run your app
CMD ["npm", "start"]
