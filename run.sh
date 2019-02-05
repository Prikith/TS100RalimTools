#!/bin/bash
# Runscript Selector

options=("No Option Original" "No Option Custom" "Elmo Original" "Elmo Custom" "Clean All" "Clean Original" "Clean Custom" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "No Option Original")
            ./OriginalBuild.sh 01
			break
            ;;
        "No Option Custom")
            ./CustomBuild.sh 01
			break
            ;;
        "Elmo Original")
            ./OriginalBuild.sh 01 "-l ELMO"
			break
            ;;
		"Elmo Custom")
            ./CustomBuild.sh 01 "-l ELMO"
			break
            ;;
        "Quit")
            break
            ;;
		"Clean All")
            rm -rf ./Workspace/Output/Original/* ./Workspace/Output/Custom/*
		    break
		    ;;
		"Clean Original")
            rm -rf ./Workspace/Output/Original/*
		    break
		    ;;
		"Clean Custom")
            rm -rf ./Workspace/Output/Custom/*
		    break
		    ;;
        *) echo "invalid option $REPLY";;
    esac
done