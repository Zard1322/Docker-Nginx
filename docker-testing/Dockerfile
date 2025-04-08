# a. i. Extend the Ubuntu image
FROM ubuntu:latest

# Turn off interactive prompts and update package info
ENV DEBIAN_FRONTEND=noninteractive

# a. ii. Update apt repository and install vim and nginx in the docker instance
RUN apt-get update && apt-get install -y \
        vim \
        nginx \
        && rm -rf /var/lib/apt/lists/*

# a. iii. Copy app script from Docker context into the docker instance
COPY app.sh /app.sh

# Give app script executable permission
RUN chmod +x /app.sh

# Expose port 80 for web traffic
EXPOSE 80

# a. iv. Invoke the app script
CMD ["bash", "/app.sh"]



