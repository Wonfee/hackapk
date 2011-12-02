#!/bin/bash

if ![ -e $1/origin.dex ]
  mv $1/classes.dex $1/origin.dex
fi

java -jar smali/smali-1.2.6.jar $1/smali -o $1/classes.dex
