# Use a lightweight Python base
FROM python:3.12-slim

# Set the folder inside the container where our code will live
WORKDIR /app

# Copy the app.py from your Mac into the container
COPY app.py .

# Install Flask (since your code uses 'from flask import Flask')
RUN pip install flask

# Tell Docker to run the app when it starts
CMD ["python", "app.py"]