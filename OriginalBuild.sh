#!/bin/bash
_BuildNumber=01
_BuildNumber=$1
rm -rf ralim_build
cd ralim_git
git pull
cd ..
cp -r ralim_git ralim_build
cp ./Workspace/BuildScripts/Original/build$_BuildNumber.sh ./ralim_build/workspace/TS100/build.sh
cp -rf ./Workspace/Translations/*.json ./ralim_build/"Translation Editor"/
cd ralim_build/workspace/TS100
chmod +x build.sh
./build.sh $2
