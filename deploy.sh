#!/usr/bin/env bash
# Push index.html to the DigitalOcean box. GitHub Pages deploys itself on `git push`.
set -euo pipefail
cd "$(dirname "$0")"
HOST=${HOST:-root@24.199.102.45}
scp -i ~/.ssh/tj-gear-id_ed25519 index.html "$HOST:/var/www/html/index.html"
curl -sS -o /dev/null -w "https://tjcelaya.com -> %{http_code}\n" https://tjcelaya.com
