#!/bin/sh

FOLDER=./app

# Check if the app directory already exists
if [ -d "$FOLDER" ]; then
    cd "$FOLDER"
else
# Create the app directory and enter it
mkdir "$FOLDER" && cd "$FOLDER"
fi

# Initiate Django web project.
django-admin startproject web .

# Modify permissions to allow all users to read, write, and execute files in the app directory
chmod -R 775 ./app

# Start the Django development server
python3 manage.py runserver 0.0.0.0:8000