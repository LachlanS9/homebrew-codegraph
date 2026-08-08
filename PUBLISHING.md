Maintainer notes for this tap - not part of the public README.

## Updating the formula after a new codegraph release

1. Bump `version` in `Formula/codegraph.rb` to match the new tag.
2. Replace the three `sha256` values with the real checksums
   (`shasum -a 256 <binary>` against the macOS arm64 and Linux x64/arm64
   release assets - Windows isn't installable via Homebrew, and Intel
   Mac isn't currently shipped).
3. Commit and push.
