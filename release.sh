#!/bin/bash

if [ -z "$1" ]; then
  echo "Usage: $0 <version>"
  exit 1
fi

helm lint $1

helm package $1

helm repo index . --url https://kontinu.github.io/charts/
