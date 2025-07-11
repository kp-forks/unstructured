#!/usr/bin/env bash

# python version must match lowest supported (3.10)
major=3
minor=10
if ! python -c "import sys; assert sys.version_info.major == $major and sys.version_info.minor == $minor"; then
  echo "python version not equal to expected $major.$minor: $(python --version)"
  exit 1
fi

pushd ./requirements || exit
make clean
make all
popd || exit
