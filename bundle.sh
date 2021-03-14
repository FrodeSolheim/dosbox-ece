#!/bin/sh

set -e

. fsbuild/plugin.pre.sh

mkdir -p $PLUGIN_BINDIR
cp dosbox-staging$EXE $PLUGIN_BINDIR

mkdir -p $PLUGIN_READMEDIR
cp README.md $PLUGIN_READMEDIR/ReadMe.txt

mkdir -p $PLUGIN_LICENSESDIR
cp \
	fsbuild/_build/dosbox-staging-src/COPYING \
	$PLUGIN_LICENSESDIR/DOSBox-Staging.txt

. fsbuild/plugin.post.sh
