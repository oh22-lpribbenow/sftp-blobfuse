#!/bin/bash
set -Eeo pipefail

# Create Mount Point
mkdir -p ${AZURE_MOUNT_POINT}

# Mount Azure Blob Storage Container
blobfuse ${AZURE_MOUNT_POINT} --use-https=true --tmp-path=/tmp/blobfuse/${AZURE_STORAGE_ACCOUNT} --container-name=${AZURE_STORAGE_ACCOUNT_CONTAINER} -o allow_other