# Step 1: Use an official Python runtime as a base image
FROM python:3.9-slim

# Step 2: Set the working directory in the container
WORKDIR /app

# Step 3: Copy the current directory contents into the container at /app
COPY . /app

# Step 4: Install any necessary dependencies (use a requirements.txt file)
RUN pip install -r requirements.txt

# Step 5: Make port 5000 available to the world outside this container
EXPOSE 5000

# Step 6: Define the command to run the app using python
CMD ["python", "apipro.py"]
