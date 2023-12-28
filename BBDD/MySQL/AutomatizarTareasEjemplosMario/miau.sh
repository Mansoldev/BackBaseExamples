#!/bin/bash
numServidores=`ps -ef|grep mysqld|grep -v mysqld_safe|grep -v grep|wc -l`
echo "Hay $numServidores servidores en mysql en el ordenador."