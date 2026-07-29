#!/bin/bash

sudo apt update
sudo apt install -y apt-transport-https software-properties-common wget gpg

sudo mkdir -p /etc/apt/keyrings

wget -q -O - https://apt.grafana.com/gpg.key | \
gpg --dearmor | sudo tee /etc/apt/keyrings/grafana.gpg >/dev/null

echo "deb [signed-by=/etc/apt/keyrings/grafana.gpg] https://apt.grafana.com stable main" | \
sudo tee /etc/apt/sources.list.d/grafana.list

sudo apt update

sudo apt install -y grafana

sudo systemctl daemon-reload
sudo systemctl enable grafana-server
sudo systemctl start grafana-server
sudo systemctl status grafana-server
