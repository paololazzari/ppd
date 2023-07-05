#!/bin/bash
set -e

cp ppd /

# Install prerequisites
apt-get update -y
apt-get install bats -y
apt-get install shellcheck -y

# Make unit tests executable
chmod +x *.sh

# Run shellcheck
shellcheck /ppd --severity=error
shellcheck /ppd --severity=warning

# Run unit tests
bats test_ppd_*.sh
