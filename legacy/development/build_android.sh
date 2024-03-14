#!/bin/bash

echo "building development android artifact..."
make remove_huawei
sh ./frontend-core-cicd/legacy/build.sh apk development_firebase lib/main_development_firebase.dart
