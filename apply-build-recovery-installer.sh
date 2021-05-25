#!/bin/bash

source_root=$(cd "$(dirname "$0")"; cd ..; pwd)

cd $source_root/build/make
git reset --hard $1
git fetch "https://gerrit.omnirom.org/android_build" refs/changes/82/33182/5 && git cherry-pick FETCH_HEAD
