#!/bin/bash
java -jar apktool/apktool.jar decode -d -s $1 $2
mkdir $2/ddx
java -jar ddx/ddx1.14.jar -o -D -r -d $2/ddx  $2/classes.dex
./dex2jar/dex2jar.sh $2/classes.dex
./smali/baksmali.sh $2
./jd-gui/jd-gui.app/Contents/MacOS/jd-gui $2/classes.dex.dex2jar.jar
