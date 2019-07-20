#!/bin/bash
source .env
sudo docker network create discovery
sudo docker-compose up -d