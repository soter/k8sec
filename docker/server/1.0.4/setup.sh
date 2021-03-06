#!/bin/bash

set -o errexit
set -o nounset
set -o pipefail

GOPATH=$(go env GOPATH)
REPO_ROOT=$GOPATH/src/github.com/appscode/k8sec

source "$REPO_ROOT/hack/libbuild/common/lib.sh"
source "$REPO_ROOT/hack/libbuild/common/public_image.sh"

IMG=ossec-wazuh-server
TAG=1.0.4

binary_repo $@
