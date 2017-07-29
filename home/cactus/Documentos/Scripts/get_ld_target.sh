target=$($1 -v 2>&1 |grep "Target:" | grep -oE '[^ ]+$' )

echo "$target"
