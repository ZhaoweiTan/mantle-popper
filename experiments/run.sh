#!/bin/bash

set -ex

root=`pwd`

for experiment in baseliner greedy-spill; do 
  cd $root/$experiment
  ./run.sh
done

cd $root
