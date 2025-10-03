#!/bin/bash
DATA_DIR="data"

echo "Installing required Python packages"
pip install pandas SQLAlchemy python psycopg2-binary

if [ $?-eq0 ]; then
  echo "Packages successfully installed!"
  else
    echo "Package installation failed."
fi

mkdir -p "$DATA_DIR/raw"
mkdir -p "$DATA_DIR/processed"

if [ $? -eq 0 ]; then
  echo "Data directories installed."
  else
    echo "Directory creation failed."
fi

echo "Happy pipelining!"