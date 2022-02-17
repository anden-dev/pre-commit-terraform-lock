#!/usr/bin/env bash

waring_message=" Please run the following command:\n
terraform providers lock
    -platform=linux_arm64
    -platform=linux_amd64
    -platform=darwin_amd64
    -platform=darwin_arm64
    -platform=windows_amd64
"

expected_no_hashes="$(echo "$waring_message" | grep -c platform)"

check_file() {
  file="$1"
  
  found_providers=$(grep -c "^provider " "$file")
  found_hashes=$(grep -c "h1:" "$file")

  if (( found_hashes/found_providers != expected_no_hashes )); then
    echo "ERROR: $file has invalid hash"
    echo "$waring_message"
    exit 1
  fi
}

check_file "$@"
