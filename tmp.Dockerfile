# Use the official Node.js image as the base image
FROM node:14

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install Node.js dependencies
RUN npm install

# Copy the rest of the application files to the container
COPY . .

# Expose the port your Node.js application listens on (if applicable)
# Replace 3000 with the port your application listens on
EXPOSE 3000

# Start the Node.js application
CMD ["npm", "start"]
