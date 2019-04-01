#!/bin/sh
## This shell script compiles R version 3.5.1 (R-3.5.1) from the source to a given directory.

## Set the path where you wish to compile R-3.5.1.
## Please make sure that the path exists. This
## script does not create the path itself.
COMPILEPATH=/home/saptarshi/R/R-3.5.1
# echo $COMPILEPATH

TEMPHOME=$PWD
# echo $TEMPHOME

# mkdir R
# mkdir R/R-3.5.1

## Unpack 'R-3.5.1.tar.gz'. It produces a sub-directory named 'R-3.5.1'
## in the current directory.
## Before running this command, make sure that the 'R-3.5.1.tar.gz' file
## is in the same directory as this script.
tar xvzf R-3.5.1.tar.gz

## Build inside $COMPILEPATH
cd $COMPILEPATH

## Configure compilation.
## There must not be any space before or after '='.
## If 'configure' fails, check config.log file for details.
$TEMPHOME/R-3.5.1/configure --prefix=$COMPILEPATH --enable-R-shlib --with-readline=no --with-x=no

## Compile
make

## Check whether compilation is successful or not
make check

## Remove unnecessary files and directories
rm -rf $TEMPHOME/R-3.5.1
