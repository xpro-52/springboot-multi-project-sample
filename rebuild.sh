#/bin/bash

set -eu

CURR_DIR="$(cd $(dirname $0); pwd)"

cd $CURR_DIR/common
mvn clean install -Dmaven.test.skip=true

cd $CURR_DIR/api
mvn clean install -Dmaven.test.skip=true

cd $CURR_DIR