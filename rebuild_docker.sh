#!/bin/bash
sudo docker-compose -f docker-compose.yml down --rmi all
sudo docker-compose -f docker-compose.yml up -d
