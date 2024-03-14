#!/bin/bash

echo "building production android artifact..."
make remove_huawei
sh ./frontend-core-cicd/legacy/build.sh apk production_firebase lib/main_production_firebase.dart
