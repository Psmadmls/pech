FROM ubuntu:latest

RUN apt-get update && apt-get install install -y \
  python \
  python3-pip

WORKDIR /app

RUN pip3 install Jupiterlab

EXPOSE 8080

CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8080", "--no-browser", "--allow-root", "--NotebookApp.token=''"]
