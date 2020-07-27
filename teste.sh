#!/bin/bash

if [ -f "/opt/db.config" ]
then
        connection_string=$(cat /opt/db.config)
        echo $connection_string
fi

my_var="Teste de variavel."

printf "VARIAVEL='%s'\n" $my_var >> file.txt