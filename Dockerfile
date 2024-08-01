# Use the official Python image from the Docker Hub
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt /app/

# Install the Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code into the container
COPY . /app/

# Ensure SQLite database file is copied
COPY db.sqlite3 /app/

# Copy static files
COPY static /app/static

# Set environment variables
ENV DJANGO_SETTINGS_MODULE=pollme.settings

# Expose the port the app runs on
EXPOSE 8000

# Run the Django application
CMD ["gunicorn", "-b", "0.0.0.0:8000", "pollme.wsgi:application"]
