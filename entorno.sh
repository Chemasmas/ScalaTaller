#!/bin/bash
#URLS JDKURL
URLJDK32="http://download.oracle.com/otn-pub/java/jdk/8u77-b03/jdk-8u77-linux-i586.tar.gz"
URLJDK64="http://download.oracle.com/otn-pub/java/jdk/8u77-b03/jdk-8u77-linux-x64.tar.gz"
CARPETAO="jdk1.8.0_77"
CARPETAD="jdk8"
echo "Descargando JAVA"
arq=$(/bin/uname -m)
if [ $arq == "i686" ]; then
  URL=$URLJDK32
else
  URL=$URLJDK64
fi
/usr/bin/wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" $URL -O JDK.tar.gz
/bin/tar -xzf ./JDK.tar.gz
mv ./$CARPETAO ./$CARPETAD
cd ./$CARPETAD
CURRDIR=$(pwd);
cd ..
mv $CURRDIR /usr/lib/$CARPETAD
