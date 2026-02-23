#!/usr/bin/env bash
set -euo pipefail

(cd contracts && forge test -q)
