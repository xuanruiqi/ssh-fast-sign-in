#!/bin/sh
if [ -z "$SSH_USER" ]; then
	echo "TUFTS_USER is not defined. Unable to ssh into your Tufts account."
	echo "Export TUFTS_USER in your .bashrc or .profile and re-login."
else
	printf "ssh-ing into %s@%s..." "$SSH_USER" "$SSH_DOMAIN"
	ssh -X $TUFTS_USER@$SSH_DOMAIN
fi
