#!/usr/bin/env bash
set -o errexit  # Exit on error

# Install dependencies
pip install -r requirements.txt

# Apply DB migrations
python manage.py migrate

# Collect static files for production
python manage.py collectstatic --noinput
