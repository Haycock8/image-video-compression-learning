FROM mcr.microsoft.com/devcontainers/python:3.11-bullseye

RUN apt-get update && apt-get install -y --no-install-recommends \
    libopencv-dev \
    ffmpeg \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /workspace

COPY requirements.txt .
RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

CMD ["/bin/bash"]