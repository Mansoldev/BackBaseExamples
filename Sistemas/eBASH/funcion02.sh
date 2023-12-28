#! /bin/bash
echo $*
function saludito () {
echo "SALUDOS DE $1"
}


saludito CARLOS
saludito $USER
a="RODRIGO"
saludito $a
banner `saludito $1`

