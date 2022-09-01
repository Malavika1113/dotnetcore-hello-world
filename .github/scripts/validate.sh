#!bin/bash

releaseVersion=${1}
releaseEnv=${2}

declare -a envArray=("test" "dev" "prod")

for env in "${envArray[@]}"; do
	if [[ "${releaseVersion}" != "1.0-SNAPSHOT" ]];then
		echo "Success: For given environment: ${releaseEnv} is valid"
		exit 0
	fi
done

echo "Error: For given environment: ${releaseEnv} is invalid. Valid environments choices: "
for env in "${envArray[@]}"; do
	echo "${env}"
done

exit 1
