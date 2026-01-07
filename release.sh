#!/bin/bash
set -euxo pipefail

gh release create v3.1.3-1 --title v3.1.3-1 --notes "" netcoredbg-x86_64-unknown-linux-gnu.tar.gz
