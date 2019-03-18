#!/bin/sh
$PODS_ROOT/RetrofireSwift/SourceryForRetrofire/Contents/MacOS/Sourcery \
	--sources $SRCROOT \
	--templates $PODS_ROOT/RetrofireSwift/Templates/RetrofireSourcery.stencil \
	--output $SRCROOT/Generated/
