#!/bin/bash
cd "$(dirname "$0")"

echo ""
echo "📦 Setting up EmailMaker. This may take a minute..."
echo ""

# Step 1: Check if Python 3 is installed
if ! command -v python3 &> /dev/null; then
  echo "⚠️ Python 3 is not installed. Installing via Xcode Command Line Tools..."
  xcode-select --install

  echo ""
  echo "👉 After installation, re-run this file by double-clicking it again."
  exit 1
fi

# Step 2: Create virtual environment if it doesn't exist
if [ ! -d "venv" ]; then
  echo "🐍 Creating Python virtual environment..."
  python3 -m venv venv
fi

# Step 3: Activate virtual environment
source venv/bin/activate

# Step 4: Upgrade pip and install dependencies
echo "📥 Installing required Python packages..."
pip install --upgrade pip
pip install -r requirements.txt

# Step 5: Run the app
echo ""
echo "🚀 Launching EmailMaker!"
python3 main.py
