
# Use the official Node.js image from the Docker Hub
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy the package.json and package-lock.json
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy the Angular app files
COPY . .

# Build the Angular app
RUN npm run build --prod

# Use the official Nginx image to serve the Angular app
FROM nginx:alpine
COPY --from=0 /app/dist/frontend /usr/share/nginx/html

# Expose port 80
EXPOSE 80
