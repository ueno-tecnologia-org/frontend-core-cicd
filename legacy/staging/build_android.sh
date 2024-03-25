#!/bin/bash

echo "building staging android artifact..."

echo "$ANDROID_STAGING_FIREBASE" > credentials/firebase/google-services.json
flutter pub run flutter_flavorizr -p assets:download
flutter pub run flutter_flavorizr -p assets:extract
flutter pub run flutter_flavorizr -p ios:xcconfig
flutter pub run flutter_flavorizr -p google:firebase
flutter pub run flutter_flavorizr -p assets:clean
make remove_huawei
sh ./frontend-core-cicd/legacy/build.sh apk staging_firebase lib/main_staging_firebase.dart
