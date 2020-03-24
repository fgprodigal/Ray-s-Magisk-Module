#!/bin/sh
if ! grep -q '^SKIPUNZIP=1$' customize.sh 2>/dev/null; then
	echo 1
fi
