#!/bin/bash
#URLS JDKURL
URLJDK32="http://download.oracle.com/otn-pub/java/jdk/8u77-b03/jdk-8u77-linux-i586.tar.gz";
URLJDK64="http://download.oracle.com/otn-pub/java/jdk/8u77-b03/jdk-8u77-linux-x64.tar.gz"
echo "Descargando JAVA";
arq=$(/bin/uname -m);
if [ $arq -eq "i686" ]; then
  URL=$URLJDK32;
else
  URL=$URLJDK64;
fi
/bin/usr/wget $URL -O "JDk.tar.gz";
