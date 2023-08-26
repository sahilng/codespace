# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the package.json and package-lock.json
COPY package.json package-lock.json ./

# Install the http-server globally
RUN npm install http-server -g

# Copy the rest of the application code into the container
COPY . .

# Expose the port the app runs on
EXPOSE 8080

# Command to run the application
CMD ["http-server", "."]