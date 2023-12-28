#! /bin/bash
cat palabras|sed -n '/^pe.*/p'>tem
cat -n tem>tem2
rm -f tem
