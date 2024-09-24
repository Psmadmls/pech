# Use the official Jupyter image
FROM jupyter/base-notebook

# Install JupyterLab
RUN pip install jupyterlab

# Set the working directory
WORKDIR /app

# Expose the desired port
EXPOSE 8080

# Set the environment variables for JupyterLab
ENV JUPYTER_ENABLE_LAB=yes
ENV JUPYTER_PORT=8080

# Configure Jupyter to use the specified port and disable token authentication
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8080", "--no-browser", "--allow-root", "--NotebookApp.token=''"]
