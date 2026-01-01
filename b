# Use a lightweight Python base image
FROM python:3.11-slim

# Set the working directory inside the container
WORKDIR /app

# Install pandas and any other dependencies
# Note: --no-cache-dir keeps the image size small
RUN pip install --no-cache-dir pandas

# Copy your script and your data file into the container
COPY load_tips.py .
COPY tips.csv .

# Command to run your script when the container starts
CMD ["python", "load_tips.py"]
