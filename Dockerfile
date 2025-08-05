# Dockerfile for Green Reliable AI for Earth Hackathon Starter
# This container includes Python dependencies and tools to develop climate-focused AI solutions
# while measuring resource efficiency.

FROM python:3.11-slim

# Metadata
LABEL maintainer="Green Reliable Software Budapest <info@greenreliable.hu>"
LABEL description="Containerized environment for the AI for Earth Hackathon 2025. Includes Python dependencies, climate data libraries and resource-efficiency tools."

# Environment settings
ENV PYTHONUNBUFFERED=1 \
    PIP_NO_CACHE_DIR=1

# Install system packages
RUN apt-get update && apt-get install -y --no-install-recommends \
        build-essential \
        git \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /usr/src/app

# Install Python dependencies
COPY requirements.txt .
RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt && \
    # Install codecarbon to measure energy and carbon footprint
    pip install --no-cache-dir codecarbon

# Copy repository contents into container
COPY . .

# Default command opens a bash shell
CMD ["/bin/bash"]
