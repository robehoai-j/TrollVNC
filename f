#!/bin/sh
set -e
D=/mnt/us/extensions/kindlefetch/bin
C=/mnt/us/bin/curl
cp "$D/search.sh" "$D/search.sh.bak-aa" 2>/dev/null || true
"$C" -fsL https://raw.githubusercontent.com/robehoai-j/TrollVNC/kf/s -o "$D/search.sh"
chmod 755 "$D/search.sh"
sed -i '/^SEARCH_SOURCE=/d' "$D/kindlefetch_config"
echo 'SEARCH_SOURCE=auto' >> "$D/kindlefetch_config"
echo OK
