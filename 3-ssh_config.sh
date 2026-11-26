#!/usr/bin/env bash
# Configures ~/.ssh/config to use the school key and refuse password auth
mkdir -p ~/.ssh
cat >> ~/.ssh/config << 'EOF'
Host 144.217.6.26
  HostName 144.217.6.26
  User dennisk
  IdentityFile ~/.ssh/school
  PasswordAuthentication no
EOF
chmod 600 ~/.ssh/config
