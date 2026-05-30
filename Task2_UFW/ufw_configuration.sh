#!/bin/bash

# UFW Firewall Configuration Script
# Task 2 - Oasis Infobyte Internship
# Author: Ankita Das

echo "Installing UFW..."
sudo apt install ufw -y

echo "Enabling UFW..."
sudo ufw enable

echo "Allowing SSH (port 22)..."
sudo ufw allow ssh

echo "Denying HTTP (port 80)..."
sudo ufw deny http

echo "Firewall Status:"
sudo ufw status verbose
