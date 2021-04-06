#!/bin/bash

git config --global user.email byandersj@gmail.com
git config --global user.name PcAudio
git config -l


ssh-keygen -t rsa -b 4096 -C "byandersj@gmail.com"

ssh-add ~/.ssh/id_rsa

cat ~/.ssh/id_rsa.pub