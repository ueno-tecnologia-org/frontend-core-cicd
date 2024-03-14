#!/bin/bash

echo "building staging android artifact..."
make remove_huawei
sh ./frontend-core-cicd/legacy/build.sh apk staging_firebase lib/main_staging_firebase.dart
