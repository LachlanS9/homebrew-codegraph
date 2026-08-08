# homebrew-codegraph

Homebrew tap for [`codegraph`](https://github.com/LachlanS9/codegraph) — a
CLI that scans a codebase and generates dependency/call graphs as JSON or
an interactive, self-contained HTML report. Supports C#, Java, Go,
Python, TypeScript/React, and Rust.

## Install

```
brew install LachlanS9/codegraph/codegraph
```

## Usage

```
codegraph                    # scan the current directory, write .codegraph/report.html
codegraph path/to/repo       # scan a specific path
codegraph --view=call        # function-call graph instead of module dependencies
codegraph --help
```

See the [main repo](https://github.com/LachlanS9/codegraph) for full
documentation.
