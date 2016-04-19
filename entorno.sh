#!/bin/bash
#URLS JDKURL
URLJDK32="http://download.oracle.com/otn-pub/java/jdk/8u77-b03/jdk-8u77-linux-i586.tar.gz";
URLJDK64="http://download.oracle.com/otn-pub/java/jdk/8u77-b03/jdk-8u77-linux-x64.tar.gz"
FLAGS='--no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie"'
echo "Descargando JAVA";
arq=$(/bin/uname -m);
if [ $arq == "i686" ]; then
  URL=$URLJDK32;
else
  URL=$URLJDK64;
fi
/usr/bin/wget $FLAGS $URL ;
