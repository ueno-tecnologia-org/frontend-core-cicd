#!/bin/bash

echo "prepare enviroment variables in .env..."
env_file=$CM_BUILD_DIR/.env

echo "CLIENTID=$CLIENTID" >> "$env_file"
echo "CLIENTSECRET=$CLIENTSECRET" >> "$env_file"
echo "PASSWORD=$PASSWORD" >> "$env_file"
echo "USERNAME=$USERNAME" >> "$env_file"
echo "PRIVATE_KEY_TEMENOS=$PRIVATE_KEY_TEMENOS" >> "$env_file"

echo "flutter.sdk=$HOME/programs/flutter" > "$CM_BUILD_DIR/android/local.properties"
cat "$CM_BUILD_DIR/android/local.properties"

cat $CM_BUILD_DIR/.env

# brew install sonar-scanner
# cat $SONARQUBE_HOME
# tar -xzf https://github.com/insideapp-oss/sonar-flutter/archive/refs/tags/0.5.0.tar.gz -C $SONARQUBE_HOME/extensions/plugins

# echo "$HOME/programs/flutter"
# cd "$HOME/programs/flutter"
# git checkout $1
