# homebrew-codegraph

Homebrew tap for [`codegraph`](https://github.com/LachlanS9/codegraph) — a
CLI that scans a codebase and generates dependency/call graphs as JSON or
an interactive, self-contained HTML report.

## Install

```
brew install LachlanS9/codegraph/codegraph
```

## Updating the formula

The formula in `Formula/codegraph.rb` downloads a prebuilt binary per
platform from the main repo's
[GitHub Releases](https://github.com/LachlanS9/codegraph/releases). After
each release:

1. Bump `version` in `Formula/codegraph.rb` to match the new tag.
2. Replace the four placeholder `sha256` values with the real checksums
   (`shasum -a 256 <binary>` against each of the four macOS/Linux release
   assets — Windows isn't installable via Homebrew).
3. Commit and push.
