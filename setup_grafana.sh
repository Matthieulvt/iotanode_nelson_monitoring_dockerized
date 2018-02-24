#!/bin/bash

curl -H "Content-Type: application/json" -X POST -u $1:$2 -d '{"name":"Prometheus","type":"prometheus","typeLogoUrl":"","access":"proxy","url":"http://prometheus:9090","basicAuth":false,"isDefault":true}' http://localhost:3000/api/datasources

wget -O /tmp/dashboard.json https://gist.githubusercontent.com/zoran/d0f21e67dc81eb424d4c22a234641788/raw
curl -H "Content-Type: application/json" -X POST -u $1:$2 -d @/tmp/dashboard.json http://localhost:3000/api/dashboards/db

wget -O /tmp/dashboard.json https://gist.githubusercontent.com/zoran/7fc75d8f9f45d6d6fbeac57200841e1a/raw
curl -H "Content-Type: application/json" -X POST -u $1:$2 -d @/tmp/dashboard.json http://localhost:3000/api/dashboards/db

wget -O /tmp/dashboard.json https://gist.githubusercontent.com/zoran/085eae1b82bb83aa0cd6cabed3a2b9f0/raw
curl -H "Content-Type: application/json" -X POST -u $1:$2 -d @/tmp/dashboard.json http://localhost:3000/api/dashboards/db