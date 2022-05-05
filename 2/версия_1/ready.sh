#!/bin/bash

service nginx start
sleep 2
python3 web.py
