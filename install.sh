#!/bin/bash
set -e
set -x
rm $HOME/jgb-build.dir/conf -rf
mkdir -p $HOME/jgb-build.dir
/bin/cp conf $HOME/jgb-build.dir -r
