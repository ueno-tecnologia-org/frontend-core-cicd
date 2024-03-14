
echo "Executing Huawei build..."

make remove_firebase
flutter pub run flutter_flavorizr -p huawei:agconnect
sh ./frontend-core-cicd/legacy/build.sh appbundle production_huawei lib/main_production_huawei.dart
