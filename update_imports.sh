#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Usage: $0 <old_package_name> <new_package_name>"
    exit 1
fi

OLD_PACKAGE=$1
NEW_PACKAGE=$2

echo "Updating imports from $OLD_PACKAGE to $NEW_PACKAGE..."

find . -type f -name "*.dart" -print0 | while IFS= read -r -d '' file; do
    echo "Processing $file..."
    if sed -i "s/package:$OLD_PACKAGE\//package:$NEW_PACKAGE\//g" "$file"; then
        echo "Updated $file"
    else
        echo "Failed to update $file"
    fi
done

echo "Imports updated from $OLD_PACKAGE to $NEW_PACKAGE"
