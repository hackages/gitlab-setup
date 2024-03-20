#!/bin/sh

# Create volumes directories
mkdir -p ~/kadena-academy/volumes/gitlab/ssh
mkdir -p ~/kadena-academy/volumes/gitlab/config
mkdir -p ~/kadena-academy/volumes/gitlab/logs
mkdir -p ~/kadena-academy/volumes/gitlab/data

docker-compose up -d

