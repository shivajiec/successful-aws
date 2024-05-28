# Base image
FROM python:3.8

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file
COPY successful-aws/requirement.txt .

# Install the project dependencies ok
RUN pip install -r successful-aws/requirement.txt

# Copy the application code into the container, and install
COPY . .

# Expose the port the Flask application will be listening on
EXPOSE 5000

# Set environment variables, if necessary
# ENV MY_ENV_VAR=value

# Run the Flask application
CMD ["python", "app.py"]