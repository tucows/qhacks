#!/bin/bash

if [ $# -eq 0 ]; then
       	echo "I feel really dumb writing a help file for this but here we are"
	echo ""
	echo './produce.sh $server:$port $topicname'
	echo ""
	echo "That's it, that's the script."
	exit 1
fi

./kafka-console-producer.sh --broker-list $1  --topic $2 
