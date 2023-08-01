#!/bin/bash
#
# symlink tf files from `_common` to every other folder next to me

workingDirectory="$(dirname "$0")"
cd "$workingDirectory" || exit
workingDirectory=$(pwd)

for dir in "${workingDirectory}"/*; do
  if [ -d "$dir" ] && [ "$dir" != "${workingDirectory}/_common" ]; then
    echo "moving into $dir"
    pushd "$dir" > /dev/null || exit
    for tfFile in ../_common/* ../_common/.*; do
      echo "symlinking $tfFile to $dir"
      ln -s "$tfFile" .
    done
    echo "leaving $dir"
    popd  > /dev/null || exit
    echo ""
  fi
done
