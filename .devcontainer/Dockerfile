FROM python:latest

# Update and upgrade packages
RUN apt update && apt upgrade -y

# Install sudo and screen
RUN apt install -y sudo screen

# Add a user called sahilng with sudo access
RUN useradd -m sahilng -s /bin/bash && \
    echo "sahilng ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/sahilng && \
    chmod 0440 /etc/sudoers.d/sahilng && \
    chown -R sahilng:sahilng /home/sahilng

# Switch to sahilng user
USER sahilng

# Set working directory as sahilng's home directory
WORKDIR /home/sahilng

# Copy the Flask app, requirements.txt, and start.sh into the Docker image
COPY ../testing_docker_flask.py .

# Install Flask and other dependencies
RUN pip install flask

# Expose the port Flask will run on
EXPOSE 3000

# Define the command to run the start.sh script
CMD ["python", "testing_docker_flask.py"]