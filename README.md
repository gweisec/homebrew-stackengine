# Homebrew Tap for StackEngine

Official Homebrew tap for [StackEngine](https://github.com/gweisec/stackengine) — A client-side WASM/Regex engine that locally redacts secrets before LLM exposure, extending to automated CI/CD PR remediation in commercial editions.

## Installation

### Step 1: Add the tap

```bash
brew tap gweisec/stackengine
```

### Step 2: Install StackEngine

```bash
brew install stackengine
```

### Shorthand (Single Command)

```bash
brew install gweisec/stackengine/stackengine
```

## Quick Verification

Once installed, verify the binary and alias:

```bash
stackengine --version
se --help
```

## Upgrading

```bash
brew update
brew upgrade stackengine
```

## Uninstalling

```bash
brew uninstall stackengine
brew untap gweisec/stackengine
```

## License

StackEngine is licensed under the [Business Source License 1.1 (BUSL-1.1)](https://github.com/gweisec/stackengine/blob/main/LICENSE).
