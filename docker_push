#! /bin/sh
#
# docker_push.sh
# Copyright (C) 2018 Malcolm Ramsay <malramsay64@gmail.com>
#
# Distributed under terms of the MIT license.
#
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
if $TRAVIS_TAG; then
    docker tag malramsay/hoomd-core:$TRAVIS_TAG
fi
docker push malramsay/hoomd-core
