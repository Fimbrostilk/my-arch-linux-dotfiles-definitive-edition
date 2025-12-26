#!/bin/bash

dump=$(ddcutil getvcp 10)
valor=${dump:66:3}

if [ $valor -lt 50 ]
then
	echo "󰃞"
elif [ $valor -lt 100 ]
then
	echo "󰃟"
else
	echo "󰃠"
fi
