FROM python:latest

# Update and upgrade packages
RUN apt-get update && apt-get upgrade -y

# Install sudo
RUN apt-get install -y sudo

# Add a user called sahilng with sudo access
RUN useradd -m sahilng -s /bin/bash && \
    echo "sahilng ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/sahilng && \
    chmod 0440 /etc/sudoers.d/sahilng && \
    chown -R sahilng:sahilng /home/sahilng

# Switch to sahilng user
USER sahilng

# Set working directory as sahilng's home directory
WORKDIR /home/sahilng

# Any other setup steps or CMD/ENTRYPOINT for your application