#!/bin/bash
set -e
set -x

script_full_path=$(realpath "$0")
d=$(dirname $script_full_path)
cd $d
PATH=$PWD:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
rm $HOME/jgb-build.dir/conf.dir -rf
mkdir -p $HOME/jgb-build.dir
/bin/cp conf.dir $HOME/jgb-build.dir -vr
