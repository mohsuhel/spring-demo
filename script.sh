#!/bin/bash

# Update the system
echo "Updating Ubuntu server..."
sudo apt update
sudo apt upgrade -y

# Install Java 11
echo "Installing Java 11..."
sudo apt install openjdk-11-jdk -y

# Install Maven
echo "Installing Maven..."
sudo apt install maven -y

# Install Git
echo "Installing Git..."
sudo apt install git -y

# Install Jenkins
echo "Installing Jenkins..."
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo tee \
    /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
    https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
    /etc/apt/sources.list.d/jenkins.list > /dev/null

sudo apt update
sudo apt install jenkins -y

# Install Docker
echo "Installing Docker..."
sudo apt install docker.io -y
sudo systemctl enable docker
sudo systemctl start docker

echo "Setup complete!"
