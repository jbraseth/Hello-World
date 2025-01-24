FROM ubuntu:latest

# Install Python 3.13 and other dependencies
RUN apt-get update && \
    apt-get install -y software-properties-common && \
    add-apt-repository universe && \
    apt-get update && \
    apt-get install -y python3.13 python3-pip && \
    rm -rf /var/lib/apt/lists/*

# Set Python 3.13 as the default python
RUN update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.13 1

# Copy and install Python requirements
COPY docs/dev/python-requirements.txt /tmp/
RUN pip3 install --no-cache-dir -r /tmp/python-requirements.txt

# Set the working directory
WORKDIR /workspace
