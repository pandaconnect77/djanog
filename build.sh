#!/usr/bin/env bash
# Used by Render to install dependencies

pip install -r requirements.txt
python manage.py collectstatic --no-input
