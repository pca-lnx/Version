#!/bin/bash

version=$1
jsonPath=$2

jq ".RedundantController.Version = \"$version\"" $jsonPath > "temp.json" && mv "temp.json" $jsonPath
