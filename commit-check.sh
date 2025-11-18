#!/bin/bash
# commit-check.sh — lineage-aware commit verification

if git rev-parse HEAD >/dev/null 2>&1; then
    echo "✅ Commit exists: $(git rev-parse --short HEAD)"
else
    echo "❌ No commit found. Run 'git add .' and 'git commit -m \"Initial commit\"'"
    exit 1
fi

