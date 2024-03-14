#!/bin/bash

echo "building android artifact..."
sh scripts/add_crashlytics.sh gms flutter
sh ./ueno_flutter_mobile_cicd/build.sh appbundle prod firebase
mv build/app/outputs/bundle/prodRelease/app-prod-release.aab build/app/outputs/bundle/prodRelease/app-prod-release-playstore.aab
