#!/usr/bin/env bash
# Displays ~/.ssh/school.pub with a reminder to never share the private key
if [ ! -f ~/.ssh/school.pub ]; then
	echo "Error: ~/.ssh/school.pub not found" >&2
	exit 1
fi
cat ~/.ssh/school.pub
echo "REMINDER: Send ONLY this public key. Never share your private key."
