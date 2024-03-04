#!/bin/bash

echo "testing..."
flutter test --coverage
# genhtml coverage/lcov.info -o coverage/html
exit 0
