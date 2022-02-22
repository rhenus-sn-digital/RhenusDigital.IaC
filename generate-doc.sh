#!/bin/bash

for file in */ ; do 
  if [[ -d "$file" && ! -L "$file" ]]; then
    terraform-docs markdown table --output-file README.md --output-mode inject "$file"
  fi; 
done
