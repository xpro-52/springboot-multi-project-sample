#/bin/bash

set -eu

CURR_DIR="$(cd $(dirname $0); pwd)"

cd $CURR_DIR/api
mvn spring-boot:run
cd $CURR_DIR
