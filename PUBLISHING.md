Maintainer notes for this tap - not part of the public README.

## Updating the formula after a new codegraph release

1. Bump `version` in `Formula/codegraph.rb` to match the new tag.
2. Replace the four `sha256` values with the real checksums
   (`shasum -a 256 <binary>` against each of the four macOS/Linux release
   assets - Windows isn't installable via Homebrew).
3. Commit and push.
