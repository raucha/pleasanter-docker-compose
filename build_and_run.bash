#! /bin/bash

SCRIPT_DIR=$(cd $(dirname $0); pwd)
cd ${SCRIPT_DIR}/docker

docker build . --tag pleasanter_image_test
docker run -it -p 5001:5000 pleasanter_image_test:latest
