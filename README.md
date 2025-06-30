# pre-commit-deadcode

A Pre-Commit check that checks for deadcode in go files using https://go.dev/blog/deadcode

## Usage

In your pre-commit-config.yaml

```yaml
repos:
  - repo: https://github.com/jonathan-mayer/pre-commit-deadcode
    rev: v0.0.1
    hooks:
      - id: go-deadcode
```

## Why use this instead of other unused code checkers?

One of the main reasons for using this hook or the [deadcode utility](https://go.dev/blog/deadcode) as a whole is that most other unused code checkers handle exported functions, types and variables differently.

For example the deadcode utility doesn't automatically see an exported function as used if it is in the `internal` folder.
