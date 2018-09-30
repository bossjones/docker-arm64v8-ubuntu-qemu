#!/usr/bin/env bash

# SOURCE: https://github.com/kubernetes/ingress-nginx/blob/master/.travis/ingress-controller.sh

set -o errexit
set -o pipefail

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

source $DIR/common.sh

IMAGE=$(make -s -C $DIR/../ image-info)

if docker_tag_exists "bossjones/$ARCH-ubuntu-qemu" $(echo $IMAGE | jq .tag) "$ARCH"; then
    echo "Image already published"
    exit 0
fi

echo "building $ARCH-ubuntu-qemu image..."
make -C $DIR/../ sub-container-$ARCH
make -C $DIR/../ sub-push-$ARCH
