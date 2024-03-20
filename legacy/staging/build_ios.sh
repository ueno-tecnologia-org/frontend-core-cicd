#!/bin/bash

echo "building staging ios artifact..."

echo "$IOS_STAGING_FIREBASE" > credentials/firebase/GoogleService-Info.plist
flutter pub run flutter_flavorizr -p assets:download
flutter pub run flutter_flavorizr -p assets:extract
flutter pub run flutter_flavorizr -p ios:xcconfig
flutter pub run flutter_flavorizr -p google:firebase
flutter pub run flutter_flavorizr -p assets:clean
# make remove_huawei
xcode-project use-profiles
sh ./frontend-core-cicd/legacy/build.sh ipa staging_firebase lib/main_staging_firebase.dart --export-options-plist=/Users/builder/export_options.plist
