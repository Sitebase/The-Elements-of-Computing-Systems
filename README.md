# The Elements of Computing Systems [![Build Status](https://travis-ci.org/Sitebase/The-Elements-of-Computing-Systems.svg?branch=master)](https://travis-ci.org/Sitebase/The-Elements-of-Computing-Systems)
This repository contains all my implementations for the projects described in the book `The Elements of Computing Systems`.

![The Elements of Computing Systems book cover](cover.jpg)

## Getting started
To run the tests an compile the code you needs some tools. These tools can easily be installed by running following command in the repo root folder:

```
make install
```

## Unit test
To run the unit tests execute following command:

```
make test
```

## Problem
All builtIn files contain windows carriage return characters
http://stackoverflow.com/questions/5843495/what-does-m-character-mean-in-vim

Run example
.tools/tools/HardwareSimulator.sh 01/And.tst

perl -i -pe 's/\r\n$/\n/g' Or.hdl


find . -type f -exec dos2unix {} \;
