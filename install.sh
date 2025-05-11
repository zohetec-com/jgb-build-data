#!/bin/bash
set -e
set -x
rm $HOME/jgb-build.dir/conf.dir -rf
mkdir -p $HOME/jgb-build.dir
/bin/cp conf.dir $HOME/jgb-build.dir -vr
