#!/bin/bash

set -e -x
docker run -d -v `pwd`:/home/jovyan/work -p 81:8888 jupyter/scipy-notebook
