# Use the official Jupyter base image
FROM jupyter/base-notebook

# Switch to root to install necessary system packages
USER root

# Install Git
RUN apt-get update && \
    apt-get install -y git && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Switch back to jovyan user
USER jovyan

# Install Python libraries
RUN pip install --no-cache-dir \
    numpy \
    pandas \
    matplotlib

# This ensures that VS Code can connect to the Jupyter server
EXPOSE 8888