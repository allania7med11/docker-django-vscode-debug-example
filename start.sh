#!/bin/sh

# Display a custom message before installing debugpy
echo "Step 1: Installing debugpy..."
pip install debugpy -t /tmp

# Display a custom message before starting the Django server with debugpy
echo "Step 2: Starting Django server with debugpy..."
python /tmp/debugpy --wait-for-client --listen 0.0.0.0:5678 manage.py runserver 0.0.0.0:8000 --nothreading --noreload

# Display a custom message after the Django server successfully starts
echo "Django server is now running successfully!"
