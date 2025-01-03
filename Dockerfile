# Use Python base image
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy the application code
COPY . .

# Install dependencies
RUN pip install --no-cache-dir --upgrade pip \
    && pip install --no-cache-dir -r requirements.txt

# Expose the application port
EXPOSE 5000

# Command to run your application
CMD ["python", "app.py"]
