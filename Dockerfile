# Use an official Python image
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy the requirements file and install dependencies
COPY requirements.txt requirements.txt
RUN pip3 install --no-cache-dir -r requirements.txt

# Copy the rest of the app
COPY . .

# Set the environment variable
ENV FLASK_APP=app.py

# Expose the port the app runs on
EXPOSE 5000

# Command to run the app
CMD ["python", "-m", "flask", "run", "--host=0.0.0.0"]
