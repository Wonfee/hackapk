java -jar apktool\apktool.jar decode -d -s %1 %2
mkdir %2\ddx
java -jar ddx\ddx1.14.jar -o -D -r -d %2\ddx  %2\classes.dex
call dex2jar\dex2jar %2\classes.dex
jd-gui\jd-gui.exe %2\classes.dex.dex2jar.jar