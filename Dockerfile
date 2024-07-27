FROM python:3.9

RUN apt-get update && apt-get install -y --no-install-recommends \
    libopencv-dev \
    ffmpeg \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /workspace

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

CMD ["/bin/bash"]