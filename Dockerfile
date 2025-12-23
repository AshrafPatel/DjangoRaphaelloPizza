# Use an official Python runtime as a parent image
FROM python:3.10.19

# Define environment variables
ENV DJANGO_SETTINGS_MODULE=raphaellopizzas.settings
ENV PYTHONUNBUFFERED=1
ENV PYTHONDONTWRITEBYTECODE=1

# Set the working directory in the container
WORKDIR /app

# Install system dependencies
RUN apt-get update && apt-get install -y build-essential libffi-dev python3-dev

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
COPY requirements.txt /app/

# Upgrade pip and install dependencies
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Make migrations this is a local command do not uncomment unless you want to create new migrations
# RUN python manage.py makemigrations

# Migrate the database
# RUN python manage.py migrate

# Make port 8000 available to the world outside this container
EXPOSE 8000

# Run the Django development server
CMD ["sh", "-c", "python manage.py migrate && python manage.py runserver 0.0.0.0:8000"]