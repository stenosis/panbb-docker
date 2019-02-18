#!/bin/sh
set -e

VERSION=${VERSION:-panbb-stable}
BASE_DIR=/panbb

# wipe the previous installation
# rm -rf $BASE_DIR
# mkdir $BASE_DIR

# download panbb
echo Downloading ${VERSION}
curl -Lqo /panbb.zip https://punbb.info/dev/panbb_$VERSION/panbb_$VERSION.zip \
	&& unzip /panbb.zip -d $BASE_DIR \
	&& rm /panbb.zip

set +e

# run panbb
php5 -S 0.0.0.0:80 -t $BASE_DIR/
