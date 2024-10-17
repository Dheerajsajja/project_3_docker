# Use the Alpine version of Python for a smaller image
FROM python:3.9-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the Python script into the container
COPY script.py .

# Copy the data files into the container
COPY data/ /home/data/

# Install any necessary packages (if required) and clean up cache
# Uncomment the line below and specify any packages needed
# RUN apk add --no-cache some-package && rm -rf /var/cache/apk/*

# Set the entry point to run the script when the container starts
CMD ["python", "script.py"]
