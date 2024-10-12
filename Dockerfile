# Use the official Ubuntu image as the base
FROM ubuntu:latest

# Install Python and other dependencies
RUN apt-get update && apt-get install -y \
    python3 python3-pip bash curl vim \
    && rm -rf /var/lib/apt/lists/*

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container
COPY . /app

# Install Python dependencies
RUN pip3 install --no-cache-dir -r requirements.txt

# Expose the application on port 5000
EXPOSE 5000

# Run the Flask app
CMD ["python3", "apipro.py"]
