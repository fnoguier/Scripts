#!/bin/sh
clear
echo "Starting DAPS Staking update script"
echo "Stopping dapscoind..."
dapscoin-cli stop
echo "Downloading update..."
wget -N https://github.com/DAPSCoin/DAPSCoin/releases/download/1.0.7.1/dapscoin-v1.0.8.0-linux.zip
echo "Installing unzip..."
sudo apt-get install unzip -y
echo "Extracting update..."
sudo unzip -jo dapscoin-v1.0.7.1-linux.zip -d /usr/local/bin
echo "Set permissions on files..."
sudo chmod +x /usr/local/bin/daps*
echo "Running dapscoind..."
dapscoind -daemon
echo "Cleaning up..."
cd
rm -rf dapscoin-v1.0.7.1-linux.zip
echo "Update completed!"
