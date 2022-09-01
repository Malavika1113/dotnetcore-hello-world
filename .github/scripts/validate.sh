#!bin/bash

releaseVersion=${1}
releaseEnv=${2}

declare -a envArray=("test" "dev" "prod")

for env in "${envArray[@]}"; do
	if [[ "${env}" == "${releaseEnv}" && "${releaseVersion}" != "1.0-SNAPSHOT" ]];then
		echo "Success: For given release version: ${releaseVersion}, environment: ${releaseEnv} is valid"
		exit 0
	fi
	echo "Error: For given release version: ${releaseVersion}, environment: ${releaseEnv} is invalid. Valid release version format xx.xx.xx.xx Eg: 22.03.0.1 "
 	exit 1
done
