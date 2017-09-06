#!/bin/bash
set -e
img=r.img
def=r.def
test ! -e $img  && sudo singularity create -s 4096 $img
sudo singularity bootstrap $img $def
