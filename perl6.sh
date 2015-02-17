#!/bin/sh

set -x
set -e

WORK=$HOME/.rakudo-build/
PREFIX=$HOME/perl6

mkdir -p $PREFIX
mkdir -p $WORK
rm -rf $WORK/rakudo

git clone https://github.com/rakudo/rakudo.git $WORK/rakudo
cd $WORK/rakudo
perl Configure.pl --prefix=$PREFIX --backends=moar --gen-moar --gen-nqp
make && make install
