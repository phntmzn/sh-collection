#!/bin/bash

# Define project root
PROJECT="metal_bot_project"

# Create base directories
mkdir -p "$PROJECT/logs"

# Create files
touch "$PROJECT/compute.metal"
touch "$PROJECT/gpu_assign.swift"
touch "$PROJECT/assignments.bin"
touch "$PROJECT/autoplay.py"
touch "$PROJECT/bot_launcher.cpp"
touch "$PROJECT/CMakeLists.txt"

# Add comments or templates to each file (optional)
echo "// Metal kernel code" > "$PROJECT/compute.metal"
echo "// Swift GPU host code" > "$PROJECT/gpu_assign.swift"
echo "" > "$PROJECT/assignments.bin"
echo "# Python autoplay bot" > "$PROJECT/autoplay.py"
echo "// C++ fork controller" > "$PROJECT/bot_launcher.cpp"
echo "# CMake configuration" > "$PROJECT/CMakeLists.txt"

echo "Scaffolded $PROJECT/ successfully."
