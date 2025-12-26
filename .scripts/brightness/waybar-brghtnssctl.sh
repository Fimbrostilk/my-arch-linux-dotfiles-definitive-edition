#!/bin/bash

dump=$(ddcutil getvcp 10)
valor=${dump:66:3}

if [ $valor -lt 50 ]
then
	ddcutil setvcp 10 50
elif [ $valor -lt 100 ]
then
	ddcutil setvcp 10 100
else
	ddcutil setvcp 10 0
fi
