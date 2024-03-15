echo "Running Sonarqube Scanning..."
# HOMEBREW_NO_AUTO_UPDATE=1 brew install sonar-scanner
# echo "sonarqube env"
# cat $SONARQUBE_HOME
# curl -L -o sonar-flutter.tar.gz https://github.com/insideapp-oss/sonar-flutter/archive/refs/tags/0.5.0.tar.gz
# tar -xzf sonar-flutter.tar.gz -C $SONARQUBE_HOME/extensions/plugins
# echo "list directory"
# ls

# ls $SONARQUBE_HOME/extensions/plugins

# sonar-scanner \
#     -Dsonar.organization=ueno-bitbucket \
#     -Dsonar.host.url=https://sonarcloud.io \
#     -Dsonar.projectKey=$2 \
#     -Dsonar.sources=$1