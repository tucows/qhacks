#!/bin/bash

if [ $# -eq 0 ]; then
	echo "Here's a help command for this crappy script"
	echo ""
	echo './consume.sh $server $topicname [--from-beginning]'
	echo ""
	exit 1
fi

./kafka-console-consumer.sh --bootstrap-server $1 $3 --topic $2 
