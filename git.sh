#!/bin/bash

# === Config ===
PROJECT_NAME="my-project"
AUTHOR_NAME="Your Name"
LICENSE_TYPE="MIT"

# === Create Project Structure ===
mkdir -p "$PROJECT_NAME"/src/"${PROJECT_NAME//-/_}"
cd "$PROJECT_NAME" || exit

# === Create Files ===
echo "# $PROJECT_NAME" > README.md

cat <<EOF > .gitignore
__pycache__/
*.pyc
.env
EOF

cat <<EOF > requirements.txt
# Add your dependencies here
EOF

cat <<EOF > setup.py
from setuptools import setup, find_packages

setup(
    name="${PROJECT_NAME//-/_}",
    version="0.1.0",
    packages=find_packages(where="src"),
    package_dir={"": "src"},
)
EOF

touch src/"${PROJECT_NAME//-/_}"/__init__.py

# === Create LICENSE (MIT) ===
cat <<EOF > LICENSE
MIT License

Copyright (c) $(date +%Y) $AUTHOR_NAME

Permission is hereby granted, free of charge, to any person obtaining a copy...
EOF

# === Initialize Git ===
git init
git add .
git commit -m "Initial commit"

echo "✅ Project '$PROJECT_NAME' created and initialized."
