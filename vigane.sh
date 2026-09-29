#!/bin/bash
set -u
FAIL="/tmp/test_fail.txt"
if [ -f "$FAIL" ]; then
mkdir -p /tmp/backup
if cp "$FAIL" /tmp/backup/; then 
echo "Kopeerimine onnestus"
else
echo "Kopeerimine ebaonnestus"
fi
else
echo "Faili ei leitud"
fi
