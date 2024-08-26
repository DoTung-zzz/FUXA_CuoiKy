# Use the official FUXA image as the base image
FROM frangoteam/fuxa:latest

# Set up the working directory
WORKDIR /usr/src/app/FUXA/server

# Copy the application data, database, logs, and images from your local directory into the container
COPY ./appdata ./_appdata
COPY ./db ./_db
COPY ./logs ./_logs
COPY ./images ./_images

# Expose the port that FUXA runs on
EXPOSE 1881

# Restart policy is typically set in docker-compose.yml or the Docker run command,
# so it’s not usually specified in a Dockerfile.

# Define the command to run FUXA server
CMD ["npm", "start"]
