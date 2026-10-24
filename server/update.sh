#!/bin/sh
# Pull the latest NiMa site from GitHub. Caddy serves /opt/nima directly, so no restart is needed.
set -e
git -C /opt/nima pull --ff-only
git -C /opt/nima log -1 --format='NiMa site now at %h: %s'
