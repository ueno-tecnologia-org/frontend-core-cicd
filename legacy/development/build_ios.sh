#!/bin/bash

echo "building development ios artifact..."

xcode-project use-profiles
sh ./frontend-core-cicd/legacy/build.sh ipa development_firebase lib/main_development_firebase.dart --export-options-plist=/Users/builder/export_options.plist
