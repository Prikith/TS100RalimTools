#!/bin/bash
mv ralim_custom ralim_custom.old
cd ralim_git
git pull
cd ..
cp -r ralim_git ralim_custom
cp ./ralim_changedfiles/build.sh ./ralim_custom/workspace/TS100/build.sh
cp -rf ./ralim_changedfiles/Translations/*.json ./ralim_custom/"Translation Editor"/
cd ralim_custom/workspace/TS100
chmod +x build.sh
./build.sh