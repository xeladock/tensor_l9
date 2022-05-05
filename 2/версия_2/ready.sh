#!/bin/bash
cat /root/hosts >> /etc/hosts
sleep 1
service nginx start
sleep 2
python3 web.py
