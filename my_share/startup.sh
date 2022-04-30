#!/bin/sh

apk add --update python3
apk add py3-pip gcc musl-dev mariadb-connector-c-dev python3-dev mariadb-dev
pip install flask mysqlclient

python3 /test-pd/python_script.py