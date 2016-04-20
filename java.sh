#!/bin/bash
#URLS JDKURL
URLJDK32="http://download.oracle.com/otn-pub/java/jdk/8u77-b03/jdk-8u77-linux-i586.tar.gz"
URLJDK64="http://download.oracle.com/otn-pub/java/jdk/8u77-b03/jdk-8u77-linux-x64.tar.gz"
CARPETAO="jdk1.8.0_77"
CARPETAD="jdk8"
echo "Descargando JAVA"
JVMHOME=/usr/lib/$CARPETAD
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
sudo mv $CURRDIR $JVMHOME
echo export J2SDKDIR=$JVMHOME >> $HOME/.bashrc
echo export J2REDIR=$JVMHOME/jre >> $HOME/.bashrc
echo export PATH=$PATH:$JVMHOME/bin:$JVMHOME/db/bin:$JVMHOME/jre/bin >> $HOME/.bashrc
echo export JAVA_HOME=$JVMHOME >> $HOME/.bashrc
echo export DERBY_HOME=$JVMHOME/db >> $HOME/.bashrc
echo "Terminado"
