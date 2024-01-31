#!/bin/bash
sed -i "s/Listen 80/Listen 9907/" /etc/apache2/ports.conf
/etc/init.d/apache2 start
python3 bot.py
