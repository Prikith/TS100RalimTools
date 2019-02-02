#!/bin/bash
_BuildNumber=01
_BuildNumber=$1
TIMESTAMP=`date "+%Y%m%d-%H%M%S"`
mv ralim_custom ./Workspace/Old/Custom/ralim_custom-$TIMESTAMP
cd ralim_git
git pull
cd ..
cp -r ralim_git ralim_custom
cp ./Workspace/BuildScripts/Custom/build$_BuildNumber.sh ./ralim_custom/workspace/TS100/build.sh
cp -rf ./Workspace/Translations/*.json ./ralim_custom/"Translation Editor"/
cd ralim_custom/workspace/TS100
chmod +x build.sh
./build.sh $2
