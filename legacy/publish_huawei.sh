echo "Executing Huawei publish..."

# echo "Go to android folder..."
#  cd ../android 

echo "Fastlane..."
gem install fastlane
fastlane add_plugin huawei_appgallery_connect

echo "Gem bundler install..."
# gem install bundler # falta versión
bundle install

echo "Executing Fastfile..."
bundle exec fastlane huawei
# cd ..
