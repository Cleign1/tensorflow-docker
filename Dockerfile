# Start from the TensorFlow GPU base image
FROM tensorflow/tensorflow:2.13.0-gpu

# Set environment variables to avoid interaction during package installation
ENV DEBIAN_FRONTEND=noninteractive

# Install git and clean up to reduce image size
RUN apt-get update && \
    apt-get install -y git && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Verify git installation
RUN git --version

# Specify the command or entry point for your container
CMD ["bash"]
