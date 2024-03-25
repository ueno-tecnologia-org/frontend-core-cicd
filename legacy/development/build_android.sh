#!/bin/bash

echo "building development android artifact..."
sh ./frontend-core-cicd/legacy/build.sh apk development_firebase lib/main_development_firebase.dart
