#!/bin/bash

#source ~/pyvenv/swuser-py3/bin/activate
cd ./WhatsMyIP
exec ./whatsmyip.py --host :: --port 8080 --consider-xrealip

