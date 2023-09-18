# Using Node.js 14 as the base image
FROM node:14

# Setting working directory inside the container
WORKDIR /usr/src/app

# Copying package.json and package-lock.json first
COPY package*.json ./

# Install the Node.js packages
RUN npm install

# Copy all the files from your local machine into the Docker container
COPY . .

# Expose port 3000
EXPOSE 3000

# Run the application
CMD ["npm", "start"]