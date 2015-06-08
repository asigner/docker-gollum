#!/bin/sh

if [ -n "${NAME+1}" ]; then
	echo "Starting local Gollum wiki for $NAME"
	git config --global user.name "$NAME"
	git config --global user.email "$EMAIL"
else
	echo "Starting local Gollum wiki"
fi

/usr/local/bin/gollum /root/wikidata $@
