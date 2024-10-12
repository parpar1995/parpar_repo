# Use the official Python 3.9 slim image as a base
FROM python:3.9-slim

# Install necessary tools: bash, sh, and other utilities
RUN apt-get update && apt-get install -y \
    bash \
    busybox \
    curl \
    vim \
    && rm -rf /var/lib/apt/lists/*

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install Python dependencies from requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 5000 for the Flask application
EXPOSE 5000

# Run the Flask application using Python
CMD ["python", "apipro.py"]
