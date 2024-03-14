#!/bin/bash

echo "building artifacts..."
extra_build_args=${@:4}
flutter version
flutter build $1 --release --flavor $2 -t $3 $extra_build_args
