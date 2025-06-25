# Base image with Ubuntu
FROM ubuntu:22.04

# Avoid interactive prompts
ENV DEBIAN_FRONTEND=noninteractive

# Fix locale warning
RUN apt-get update && apt-get install -y locales && \
    locale-gen en_US.UTF-8
ENV LANG=en_US.UTF-8
ENV LANGUAGE=en_US:en
ENV LC_ALL=en_US.UTF-8

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
    samtools && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Install Salmon
RUN wget https://github.com/COMBINE-lab/salmon/archive/refs/tags/v1.10.1.tar.gz && \
    tar -xvzf v1.10.1.tar.gz && \
    mv salmon-1.10.1/ /usr/local/bin && \
    rm -rf salmon-1.10.1*

# Set default shell
SHELL ["/bin/bash", "-c"]



