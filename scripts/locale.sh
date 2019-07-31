#!/bin/bash
#Configure locale for spanish keyboard

#Exit immediately if a command exits with a non-zero status
set -e
#Print commands and their arguments as they are executed
set -x

localedef --list-archive | grep -a -v es_ES.UTF-8 | xargs sudo localedef --delete-from-archive
sudo cp /usr/lib/locale/locale-archive{,.tmpl}
sudo build-locale-archive