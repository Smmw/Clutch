#!/bin/sh

#  Script.sh
#  Clutch
#
#  Created by dev on 05/01/2017.
#

if [ ! -d "$SRCROOT/build" ]; then
    echo "making $SRCROOT/build"
    mkdir "$SRCROOT/build"
fi

if cp "$TARGET_BUILD_DIR/$EXECUTABLE_PATH" "$SRCROOT/build/"; then
    echo "moved exectuable from $TARGET_BUILD_DIR/$EXECUTABLE_PATH to $SRCROOT/build/"
fi

if xcrun --sdk iphoneos codesign -fs- --entitlements "$SRCROOT/Clutch/Clutch.entitlements" "$SRCROOT/build/$EXECUTABLE_NAME"; then
    echo "signed binary"
fi
