#!/bin/bash
docker build -t load-balanced-app .
docker run -e "MESSAGE=First instance" -p 8081:8080 -d load-balanced-app
docker run -e "MESSAGE=Second instance" -p 8082:8080 -d load-balanced-app
docker run -e "MESSAGE=Third instance" -p 8083:8080 -d load-balanced-app
docker run -e "MESSAGE=Fourth instance" -p 8084:8080 -d load-balanced-app
docker run -e "MESSAGE=Fifth instance" -p 8085:8080 -d load-balanced-app
docker run -e "MESSAGE=Sixth instance" -p 8086:8080 -d load-balanced-app
