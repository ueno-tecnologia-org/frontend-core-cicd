#!/bin/bash

echo "building artifacts..."
extra_build_args=${@:4}
flutter version
flutter build $1 --release --dart-define=UENO_ENVIRONMENT=$2 --dart-define=UENO_USE_MOCKS=false --dart-define=UENO_CRASHLYTICS_PROVIDER=$3 --flavor $2 -t lib/main.dart $extra_build_args
