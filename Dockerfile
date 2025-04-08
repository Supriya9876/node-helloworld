# Use the official Node.js image from Docker Hub
FROM node:16

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (if present) into the container
# This will allow Docker to install dependencies if any are listed
COPY package*.json ./

# Install dependencies (if there are any in your package.json)
RUN npm install

# Copy the rest of the application code into the container
COPY . .

# Expose the port the app will run on
EXPOSE 3000

# Define the command to run your app
CMD ["node", "index.js"]

