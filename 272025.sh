#!/bin/bash

# Root directory
mkdir -p myapp && cd myapp

# Top-level files
touch Dockerfile docker-compose.yml .env manage.py

# Config
mkdir -p config
touch config/__init__.py config/default.py config/production.py

# Requirements
mkdir -p requirements
touch requirements/base.txt requirements/dev.txt

# App core
mkdir -p app/api/v1 app/auth app/models app/services app/static app/templates
touch app/__init__.py
touch app/api/__init__.py
touch app/api/v1/__init__.py app/api/v1/resources.py app/api/v1/schemas.py

# Migrations and tests
mkdir -p migrations tests
touch tests/__init__.py

echo "✅ Flask project scaffold created at ./myapp"
