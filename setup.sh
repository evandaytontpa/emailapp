#!/bin/bash

echo "📦 Setting up EmailMaker..."

cd "$(dirname "$0")"

# Create venv if missing
if [ ! -d "venv" ]; then
  echo "🧱 Creating virtual environment..."
  /usr/bin/python3 -m venv venv
fi

# Activate venv and install requirements
source venv/bin/activate
echo "📥 Installing packages..."
pip install -r requirements.txt

# Launch the app
echo "🚀 Launching EmailMaker..."
open EmailMaker.app
