#!/bin/bash

# Input text
input_text="$1"

# validates non empty input
if [[ -z "$input_text" ]]; then
  echo "Please provide the text"
  exit 1
fi

# gives format to code
output_text=$(echo -n "$input_text" | sed -r 's/(..)/\\x\1/g')

# prints the result
echo  "\"$output_text\""
