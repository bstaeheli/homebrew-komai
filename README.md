# Homebrew Komai Tap

A Homebrew tap for [Komai](https://github.com/etkecc/komai) — a fine Matrix chat
client for the desktop. 🦁

## Installation

### Prerequisites
- macOS 13.3 (Ventura) or newer
- Apple Silicon (ARM64) — Komai does not ship an Intel/x86_64 build
- Homebrew installed

### Install Komai

```bash
# Add the tap
brew tap bstaeheli/homebrew-komai

# Install Komai (it is a GUI app, so it installs as a cask)
brew install --cask komai
```

### Upgrade Komai

```bash
brew update
brew upgrade --cask komai
```

### First launch (Gatekeeper)

Komai is not signed or notarized by Apple, so macOS blocks the first launch:

- **macOS 13/14:** right-click `komai.app` in `/Applications` and choose **Open**.
- **macOS 15+:** try to open it once, then go to
  **System Settings → Privacy & Security → "Open Anyway"**.

## About This Tap

This tap automatically checks for new Komai releases **daily** and updates the
cask with:
- The latest version from the GitHub releases
- A freshly computed SHA256 checksum

The download URL is derived from the version, so a version bump is all that is
needed.

## Supported Architecture

- ✅ macOS ARM64 (Apple Silicon), macOS 13.3+
- ❌ macOS x86_64 (Komai does not provide an x86_64 build)

## Uninstall

```bash
brew uninstall --cask komai
brew untap bstaeheli/homebrew-komai
```

## License

Komai is licensed under **GPL-3.0** by its creators. This tap merely packages it
for Homebrew.

## Links

- [Komai GitHub](https://github.com/etkecc/komai)
- [Komai Releases](https://github.com/etkecc/komai/releases)
