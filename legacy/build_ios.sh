#!/bin/bash

echo "building ios artifact..."
sh scripts/add_crashlytics.sh gms flutter

xcode-project use-profiles

cp -r "ios/Runner/Firebase/prod/GoogleService-Info.plist" "ios/Runner/GoogleService-Info.plist"
sh ./ueno_flutter_mobile_cicd/build.sh ipa prod firebase --export-options-plist=/Users/builder/export_options.plist
