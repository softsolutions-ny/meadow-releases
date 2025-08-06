#!/bin/bash

# Create release for v0.0.3 with GitHub CLI

echo "Creating Meadow v0.0.3 release..."

# Navigate to the releases repo
cd /Users/arekhalpern/Code/soloprojects/2025/Meadow/meadow-releases

# Create the release with both DMG files
gh release create v0.0.3 \
  "../meadow-electron-shadcn/out/release-dmgs/meadow-v0.0.3-arm64-silicon.dmg" \
  "../meadow-electron-shadcn/out/release-dmgs/meadow-v0.0.3-x64-intel.dmg" \
  --repo softsolutions-ny/meadow-releases \
  --title "Meadow v0.0.3" \
  --notes-file RELEASE_NOTES_0.0.3.md \
  --latest

echo "Release created successfully!"
echo "View the release at: https://github.com/softsolutions-ny/meadow-releases/releases/tag/v0.0.3"