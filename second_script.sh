#!/bin/sh

# Create the app directory and enter it
mkdir app && cd app

# Initiate Django web project.
django-admin startproject web .

# Modify permissions to allow all users to read, write, and execute files in the app directory
chmod -R 777 /app

# Start the Django development server
python3 manage.py runserver 0.0.0.0:8000