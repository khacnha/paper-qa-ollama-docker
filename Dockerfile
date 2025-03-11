# Use Python 3.12 as base image
FROM python:3.12-slim

# Set working directory
WORKDIR /app

# Install dependencies
RUN pip install --upgrade pip setuptools
RUN pip install paper-qa

# Copy the demo script
COPY . /app/

# Keep container running
CMD ["tail", "-f", "/dev/null"]