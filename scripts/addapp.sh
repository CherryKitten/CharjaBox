#!/usr/bin/env bash

# This Script creates all the files and directories needed to add a new app to CharjaBox.

DIR=$(basename $PWD)
if [[ $DIR == "scripts" ]]; then
  cd ..
fi

if [[ $1 ]]; then
  mkdir roles/$1
	mkdir roles/$1/templates
	mkdir roles/$1/tasks
	touch roles/$1/tasks/main.yml
	touch roles/$1/templates/$1.service.j2
	touch roles/$1/templates/docker-compose.$1.yml.j2
	touch settings/defaults/$1.yml
	printf "Created files for application $1\n"
else
	printf "Error: No name given. \nUsage: ./addapp.sh \$APPNAME \n"
fi
