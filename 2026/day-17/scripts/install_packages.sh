#!/bin/bash

packages=("nginx" "curl" "wget")

for package in "${packages[@]}"
do
  if dpkg -s "$package" &> /dev/null
  then
    echo "✓ $package is already installed — skipping"
  else
    echo "↓ Installing $package..."
    sudo apt install -y "$package"
    echo "✓ $package installed successfully"
  fi
done

echo ""
echo "All packages processed!"