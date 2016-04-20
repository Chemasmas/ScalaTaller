#!/bin/bash
#URLS JDKURL
URLJDK32="http://download.oracle.com/otn-pub/java/jdk/8u77-b03/jdk-8u77-linux-i586.tar.gz"
URLJDK64="http://download.oracle.com/otn-pub/java/jdk/8u77-b03/jdk-8u77-linux-x64.tar.gz"
URLSCALA="http://downloads.lightbend.com/scala/2.11.8/scala-2.11.8.tgz"
URLSBT="https://repo.typesafe.com/typesafe/ivy-releases/org.scala-sbt/sbt-launch/0.13.11/sbt-launch.jar?_ga=1.35464034.2128109674.1461125401"
CARPETAO="jdk1.8.0_77"
CARPETAD="jdk8"
CARPETAOS="scala-2.11.8"
CARPETADS="scala"
echo "Descargando JAVA"
JVMHOME=/usr/lib/$CARPETAD
SCALAHOME=/usr/local/share/$CARPETADS
SBTHOME=/usr/lib/sbt
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
echo export JAVA_HOME=$JVMHOME >> $HOME/.bashrc
echo export DERBY_HOME=$JVMHOME/db >> $HOME/.bashrc
echo "Terminado JAVA"
echo "Descargando SCALA"
/usr/bin/wget $URLSCALA -O scala.tgz
/bin/tar -xzf ./scala.tgz
mv ./$CARPETAOS ./$CARPETADS
cd ./$CARPETADS
CURRDIR=$(pwd);
cd ..
sudo mv $CURRDIR $SCALAHOME
echo "Terminado SCALA"
/usr/bin/wget $URLSBT
chmode 722 ./sbt-launch.jar
mkdir $SBTHOME
mv ./sbt-launch.jar $SBTHOME
chmode 722 ./sbt
mv ./sbt $SBTHOME
#Edicion del PATH
echo export PATH=$PATH:$JVMHOME/bin:$JVMHOME/db/bin:$JVMHOME/jre/bin:$SCALAHOME/bin:$SBTHOME >> $HOME/.bashrc
