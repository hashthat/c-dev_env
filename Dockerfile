# Use LTS version for stability
FROM ubuntu:22.04

# Set environment to prevent interactive prompts
ENV DEBIAN_FRONTEND=noninteractive

# Update CA certificates first
RUN apt-get update && \
    apt-get install -y --no-install-recommends ca-certificates

# Install development tools
RUN apt-get update && \
    apt-get install -y \
    build-essential \
    gdb \
    valgrind \
    clang \
    cmake \
    git \
    vim \
    nano \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /workspace
CMD ["/bin/bash"]
