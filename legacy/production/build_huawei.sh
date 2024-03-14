echo "Executing crashlytics script..."
sh scripts/add_crashlytics.sh hms flutter

echo "Executing Huawei build..."
sh ./ueno_flutter_mobile_cicd/build.sh appbundle prod huawei --no-sound-null-safety

echo "Move Huawei artifact..."
mv build/app/outputs/bundle/prodRelease/app-prod-release.aab build/app/outputs/bundle/prodRelease/app-prod-release-huawei.aab
