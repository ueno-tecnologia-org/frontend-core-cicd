echo "Executing Huawei build..."
echo "$ANDROID_PRODUCTION_HUAWEI" > credentials/huawei/agconnect-services.json

flutter pub run flutter_flavorizr -p huawei:agconnect
make remove_firebase
sh ./frontend-core-cicd/legacy/build.sh appbundle production_huawei lib/main_production_huawei.dart
