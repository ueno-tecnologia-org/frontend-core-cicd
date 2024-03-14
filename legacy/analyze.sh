#!/bin/bash

echo "executing formatter..."
dart format --line-length=80 --set-exit-if-changed .

echo "executing analyze..."
flutter analyze
