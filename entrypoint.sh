#!/bin/sh

cat <<EOF | crontab -
* * * * * echo "Hello, World!"
EOF

echo "########################"
crontab -l
echo "########################"

crond -f -l 0