# Use the official Jupyter base image
FROM jupyter/base-notebook

# Install Git and necessary Python libraries
RUN apt-get update && \
    apt-get install -y git && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    pip install --no-cache-dir \
        numpy \
        pandas \
        matplotlib

# This ensures that VS Code can connect to the Jupyter server
EXPOSE 8888