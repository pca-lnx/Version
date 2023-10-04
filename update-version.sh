#!/bin/bash

version=$1
lnxVersion=$2
jsonPath=$3

jq ".RedundantController.Version = \"$version\"" $jsonPath > "temp.json" && mv "temp.json" $jsonPath
jq ".LNX.Version = \"$lnxVersion\"" $jsonPath > "temp.json" && mv "temp.json" $jsonPath
