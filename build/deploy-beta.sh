#!/bin/bash

export TARGET="zyloid:~/sites/jbmorley/gameboy-beta"
export ROOT=../src

rsync -avPe ssh $ROOT/*.html $TARGET
rsync -avPe ssh $ROOT/js     $TARGET
rsync -avPe ssh $ROOT/jsgb   $TARGET
rsync -avPe ssh $ROOT/css    $TARGET
rsync -avPe ssh $ROOT/images $TARGET

rsync -avPe ssh settings-beta.json $TARGET/settings.json