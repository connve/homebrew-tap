# CONNVE Homebrew tap

```bash
brew install connve/tap/flowgen
```

## Formulae

- `flowgen`: agentic data activation platform with human-in-the-loop. See the [docs](https://connve.com/docs/flowgen).

## How it works

A release of flowgen renders `Formula/flowgen.rb` from `Formula/flowgen.rb.tmpl`, filling in `__VERSION__` and the `__SHA_<PLATFORM>_<ARCH>__` checksums of its archives, and commits it here.

Change the formula in `Formula/flowgen.rb.tmpl`, never in `Formula/flowgen.rb`: the next release overwrites it.
