#!/bin/bash

# Create base project directory
mkdir -p myapp && cd myapp

# Top-level files
touch manage.py config.py requirements.txt

# Instance configuration
mkdir -p instance
touch instance/config.py

# App package and subdirectories
mkdir -p app/{main,auth,templates,static}
touch app/__init__.py
touch app/extensions.py
touch app/models.py

# Main blueprint
touch app/main/__init__.py
touch app/main/routes.py

# Auth blueprint
touch app/auth/__init__.py
touch app/auth/routes.py

# Tests
mkdir -p tests
touch tests/__init__.py
touch tests/test_app.py

echo "✅ Flask CLI project scaffold created at ./myapp"
