# homebrew-tap

Homebrew formulae for [TarunVishwakarma1](https://github.com/TarunVishwakarma1)'s tools.

## Usage

```sh
brew tap TarunVishwakarma1/tap
brew install netspd
```

## Formulae

| Formula | Description |
| --- | --- |
| [`netspd`](Formula/netspd.rb) | Beautiful network speed test for the terminal, with a hypercar tachometer |

## How formulae are updated

`Formula/netspd.rb` is managed by CI: netspd's
[release workflow](https://github.com/TarunVishwakarma1/netspd/blob/main/.github/workflows/release.yml)
regenerates it with fresh checksums and pushes here whenever a `v*` tag
is released. Do not edit it by hand — changes will be overwritten on the
next release.

Manual fallback, should CI ever be unavailable:

1. Download the new release archives and compute their checksums:
   ```sh
   shasum -a 256 netspd-vX.Y.Z-*.tar.gz
   ```
2. Bump `version` and the `sha256` values in the formula.
3. Commit and push — users get the update on their next `brew upgrade`.
