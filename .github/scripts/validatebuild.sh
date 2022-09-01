#!bin/bash

inputBranch=${1}
checkRelease=${2}

if [[ "${inputBranch}" == "master" && "${checkRelease} == true ]];then
   exit 0
elif [[ "${inputBranch}" == hotfix* && "${checkRelease} == true ]];then
   exit 0
elif [[ "${inputBranch}" == hotfix* || "${inputBranch}" == "master" ]];then
   exit 0
else
   echo "This is a feature branch. Release version
