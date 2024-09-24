FROM ubuntu:latest

# Update package list and install Python 3 and pip
RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip

# Upgrade pip to the latest version
RUN pip3 install --upgrade pip

# Set the working directory
WORKDIR /app

# Install JupyterLab
RUN pip3 install jupyterlab

# Expose port 8080
EXPOSE 8080

# Start JupyterLab
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8080", "--no-browser", "--allow-root", "--NotebookApp.token=''"]
