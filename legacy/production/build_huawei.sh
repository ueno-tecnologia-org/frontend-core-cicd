
echo "Executing Huawei build..."

make remove_huawei
sh ./frontend-core-cicd/legacy/build.sh appbundle production_huawei lib/main_production_huawei.dart

