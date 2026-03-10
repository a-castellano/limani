#!/bin/bash

for json_file in $(find . ! -path '*/\.*' ! -path '*/.git/*' -iwholename "*\.json"); do
  echo "Processing ${json_file}"
  folder_name=$(dirname "$json_file")
  karavomarangos --json-file="${json_file}" --dockerfile-output="${folder_name}/Dockerfile" --readme-output="${folder_name}/README.md"
done
