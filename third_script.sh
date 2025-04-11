#!/bin/bash

# Change ownership of the app directory to the current user
chown -R sergio:sergio $(pwd)

# Change permissions to prevent other users from writing to the app directory
chmod -R 775 $(pwd)