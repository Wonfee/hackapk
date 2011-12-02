java -jar AXMLprinter2.jar %1 >tmp.xml
del %1>nul
ren tmp.xml %1
