#!/bin/bash
set -e

# Default download directory (can be overridden)
TARGET_DIR="${1:-./data/test}"

# Create the directory if it doesn't exist
mkdir -p "${TARGET_DIR}"

# Test blob details
BASE_URL="https://motional-nuscenes.s3.amazonaws.com/public/v1.0"
FILENAME="v1.0-test_blobs.tgz"
URL="${BASE_URL}/${FILENAME}"
DEST="${TARGET_DIR}/${FILENAME}"

echo "Downloading ${FILENAME} to ${DEST}..."
wget -c "${URL}" -O "${DEST}"
echo "Finished downloading ${FILENAME} to ${TARGET_DIR}."
