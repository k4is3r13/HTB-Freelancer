#!/bin/bash

echo -e 'Introduce el payload: '
read -r payload
payload=$(urlencode $payload)

#Debugging
#echo $payload

funct=$(curl -s 139.59.162.63:32139/portfolio.php\?id=$payload | grep -v -E "Portfolio|div|/p|Lorem|link|<!-- Icon Divider -->")
#funct=$(curl -s 139.59.162.63:30730/portfolio.php\?id=$payload)



echo -e ' '
echo -e $funct
