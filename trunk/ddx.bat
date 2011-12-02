@echo off
echo ddx [dir] [xxx.dex]
@echo on

mkdir %1
java -jar ddx\ddx1.14.jar -o -D -r -d %1 %2
