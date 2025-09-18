#!/bin/bash
echo "Starting deployment..."

# Collect static files (for Whitenoise / production)
python manage.py collectstatic --noinput

# Run database migrations
python manage.py migrate

echo "Deployment complete!"
