#!/usr/bin/env bash
sed -i "s~http://localhost:5000~${ENV}~g" /root/static/index.html
python /root/rest-server.py