FROM jupyter/base-notebook:latest

# Install Git and other dependencies
RUN apt-get update && apt-get install -y git && apt-get clean

# Install Python libraries
RUN pip install pandas numpy
