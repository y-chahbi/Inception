#!/bin/bash

wget https://www.free-css.com/assets/files/free-css-templates/download/page291/dozecafe.zip

mkdir /var/t_tmp
unzip dozecafe.zip -d /var/t_tmp

cp -r /var/t_tmp/html/* /var/www/html

apachectl -DFOREGROUND