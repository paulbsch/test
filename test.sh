#!/bin/bash

set -x

ls -ld /tmp
ls -l /tmp

ETC_HOSTS="$(cat <<EOF
127.0.0.1   localhost
::1         localhost ip6-localhost ip6-loopback
EOF
)"

echo "$ETC_HOSTS"

