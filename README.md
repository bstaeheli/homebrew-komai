# Homebrew Komai Tap

A Homebrew tap for [Komai](https://github.com/etkecc/komai) - A personal finance tracker with powerful budgeting tools.

## Installation

### Prerequisites
- macOS with Apple Silicon (ARM64)
- Homebrew installed

### Install Komai

```bash
# Add the tap
brew tap bstaeheli/homebrew-komai

# Install Komai
brew install komai
```

### Update Komai

```bash
brew update
brew upgrade komai
```

## About This Tap

This tap automatically checks for new Komai releases **daily** and updates the formula with:
- Latest version from GitHub releases
- Updated SHA256 checksums
- Download URLs for ARM64 macOS builds

## Supported Architecture

- ✅ macOS ARM64 (Apple Silicon)
- ❌ macOS x86_64 (Komai does not provide x86_64 builds)

## Uninstall

```bash
brew uninstall komai
brew untap bstaeheli/homebrew-komai
```

## License

This tap is provided as-is under the MIT License. Komai is licensed under the MIT License by its creators.

## Links

- [Komai GitHub](https://github.com/etkecc/komai)
- [Komai Releases](https://github.com/etkecc/komai/releases)
