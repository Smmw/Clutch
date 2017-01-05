#!/bin/sh

#  Script.sh
#  Clutch
#
#  Created by dev on 05/01/2017.
#

if [ ! -d "$SRCROOT/build" ] then;
    mkdir "$SRCROOT/build"
fi

cp "$EXECUTABLE_PATH" "$SRCROOT/build/"
xcrun --sdk iphoneos codesign -fs- --entitlements "$SRCROOT/Clutch/Clutch.entitlements" "$SRCROOT/build/$EXECTUABLE_NAME"
