#!/bin/bash

echo "building artifacts..."
extra_build_args=${@:4}
flutter version
flutter build $1 --release --flavor $2 -t $3 $extra_build_args

# flutter build ipa --release --flavor production_firebase -t lib/main_production_firebase.dart --export-options-plist=/Users/builder/export_options.plist