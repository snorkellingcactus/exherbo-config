#!/bin/sh

INPUT="$1"
OUTPUT="$2"
dd if="${INPUT}" | pv -s $(du -k "${INPUT}" | cut -f1)k | dd of="${OUTPUT}"
