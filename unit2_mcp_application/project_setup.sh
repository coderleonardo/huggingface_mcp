#!/bin/bash
set -e

# Create project directory if it doesn't exist
mkdir -p mcp-sentiment
cd mcp-sentiment

# Create virtual environment if it doesn't exist
if [ ! -d "venv-mcp-sentiment" ]; then
    python3 -m venv venv-mcp-sentiment
fi

# Activate virtual environment
source venv-mcp-sentiment/bin/activate

# Upgrade pip and install dependencies
pip install --upgrade pip
pip install "gradio[mcp]" textblob