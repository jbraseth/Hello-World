FROM ubuntu:latest

# Install Python 3.13 and other dependencies
RUN echo "deb http://archive.ubuntu.com/ubuntu plucky main universe" >> /etc/apt/sources.list && \
    apt-get update && \
    apt-get install -y python3.13 python3-pip python3.13-venv && \
    rm -rf /var/lib/apt/lists/*

# Set Python 3.13 as the default python
RUN update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.13 1

# Create and activate a virtual environment, then install requirements
RUN python3 -m venv /opt/venv && \
    /opt/venv/bin/pip install --no-cache-dir --upgrade pip && \
    ln -s /opt/venv/bin/pip /usr/local/bin/pip && \
    ln -s /opt/venv/bin/python /usr/local/bin/python

# Copy and install Python requirements
COPY docs/dev/python-requirements.txt /tmp/
RUN /opt/venv/bin/pip install --no-cache-dir -r /tmp/python-requirements.txt

# Set the working directory
WORKDIR /workspace

# Ensure the virtual environment is used by default
ENV PATH="/opt/venv/bin:$PATH"
