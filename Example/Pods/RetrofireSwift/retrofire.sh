#!/bin/sh
$PODS_ROOT/Sourcery/bin/sourcery \
	--sources $SRCROOT \
	--templates $PODS_ROOT/RetrofireSwift/Templates/RetrofireSourcery.stencil \
	--output $SRCROOT/Generated/