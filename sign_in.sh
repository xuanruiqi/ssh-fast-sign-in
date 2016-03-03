#!/bin/sh
if [ -z "$SSH_USER" ]; then
	echo "SSH_USER is not defined. Unable to ssh into your account."
	echo "Run the install script and re-login."
elif [ -z "$SSH_DOMAIN" ]; then
	echo "SSH_DOMAIN is not defined. Unable to ssh into your account."
	echo "Run the install script and re-login."
else
	printf "ssh-ing into %s@%s..." "$SSH_USER" "$SSH_DOMAIN"
	ssh -X $SSH_USER@$SSH_DOMAIN
fi
