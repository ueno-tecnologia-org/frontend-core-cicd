#!/bin/bash

echo "building production ios artifact..."

xcode-project use-profiles

echo "$IOS_PRODUCTION_FIREBASE" > credentials/firebase/GoogleService-Info.plist
flutter pub run flutter_flavorizr -p assets:download
flutter pub run flutter_flavorizr -p assets:extract
flutter pub run flutter_flavorizr -p ios:xcconfig
flutter pub run flutter_flavorizr -p google:firebase
flutter pub run flutter_flavorizr -p assets:clean
make remove_huawei
xcode-project use-profiles
sh ./frontend-core-cicd/legacy/build.sh ipa production_firebase lib/main_production_firebase.dart --export-options-plist=/Users/builder/export_options.plist

# flutter build ipa --release --flavor production_firebase -t lib/main_production_firebase.dart --export-options-plist=/Users/builder/export_options.plist