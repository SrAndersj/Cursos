#!/bin/bash

mkdir /tmp/DirectorioTerminal
tar czf /tmp/DirectorioTerminal/terminal.`date +%F`.tgz /home/anders/Escritorio/CursosUnaSolaCarpeta/terminal
mv /tmp/DirectorioTerminal/terminal.`date +%F`.tgz /home/anders/Escritorio
rmdir /tmp/DirectorioTerminal

