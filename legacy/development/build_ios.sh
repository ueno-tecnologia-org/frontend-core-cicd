#!/bin/bash

echo "building development ios artifact..."

flutter pub run flutter_flavorizr -p assets:download
flutter pub run flutter_flavorizr -p assets:extract
flutter pub run flutter_flavorizr -p ios:xcconfig
flutter pub run flutter_flavorizr -p google:firebase
flutter pub run flutter_flavorizr -p assets:clean
make remove_huawei
xcode-project use-profiles
sh ./frontend-core-cicd/legacy/build.sh ipa development_firebase lib/main_development_firebase.dart --export-options-plist=/Users/builder/export_options.plist
