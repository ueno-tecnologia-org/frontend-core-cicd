echo "Find build artifacts"
dsymPath=$(find $CM_BUILD_DIR/build/ios/archive/Runner.xcarchive -name "*.dSYM" | head -1)
if [[ -z ${dsymPath} ]]
then
    echo "No debug symbols were found, skip publishing dSYM to Firebase Crashlytics"
else
    echo "Publishing debug symbols from $dsymPath to Firebase Crashlytics"
    ls -d -- ios/Pods/*
    $CM_BUILD_DIR/ios/Pods/FirebaseCrashlytics/upload-symbols \
    -gsp ios/Runner/GoogleService-Info.plist -p ios $dsymPath
fi
