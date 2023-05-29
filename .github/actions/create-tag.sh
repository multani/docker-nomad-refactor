#!/bin/bash

set -euo pipefail

TAG="$(cat nomad-version)"
set +x

git tag --annotate --message "Nomad $TAG" "$TAG"
git push origin "$TAG"
