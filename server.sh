#!/bin/bash

# Set password
PASSWORD="test"

# Generate a hashed password using notebook.auth
HASHED_PASSWORD=$(python -c "from jupyter_server.auth import passwd; print(passwd('${PASSWORD}'))")

# Start Jupyter notebook with the hashed password and other configurations
jupyter notebook --no-browser --port=8888 --NotebookApp.password="${HASHED_PASSWORD}" --NotebookApp.allow_origin='*'
