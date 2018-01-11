#!/usr/bin/env bash

apt-get update
apt-get install -y apache2
if ! [ -L /var/www ]; then
	rm -rf /var/www
	ln -fs /vagrant /var/www
fi
apt-get install -y git
git config --global user.email "you@email.com"
git config --global user.name "your name"
git config --global push.default simple