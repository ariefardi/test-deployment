# Use an official Node.js runtime as the base image
FROM node:18

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application
COPY . .


# Expose the application's port (optional)
EXPOSE 3000

# Define the command to start the application
CMD ["npm", "start"]
