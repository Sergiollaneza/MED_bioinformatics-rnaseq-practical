# Base image with Ubuntu
FROM ubuntu:22.04

# Avoid interactive prompts
ENV DEBIAN_FRONTEND=noninteractive

# Install dependencies and tools
RUN apt-get update && \
    apt-get install -y \
    wget \
    curl \
    unzip \
    git \
    build-essential \
    zlib1g-dev \
    libncurses5-dev \
    libncursesw5-dev \
    libbz2-dev \
    liblzma-dev \
    libcurl4-openssl-dev \
    libssl-dev \
    python3 \
    python3-pip \
    default-jre \
    fastqc \
    samtools \
    && apt-get clean

# Install Salmon
RUN wget https://github.com/COMBINE-lab/salmon/releases/download/v1.10.2/salmon-1.10.2_linux_x86_64.tar.gz && \
    tar -xvzf salmon-1.10.2_linux_x86_64.tar.gz && \
    mv salmon-1.10.2_linux_x86_64/bin/salmon /usr/local/bin && \
    rm -rf salmon-1.10.2_linux_x86_64*

# Set default shell
SHELL ["/bin/bash", "-c"]
