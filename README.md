# Homebrew Tap for StormDL

This is the official [Homebrew](https://brew.sh/) tap for [StormDL](https://github.com/Augani/stormdl), a lightning-fast download accelerator.

## Installation

```bash
brew tap Augani/stormdl
brew install storm
```

## Usage

```bash
# Download a file
storm https://example.com/file.zip

# Download with 16 parallel segments
storm https://example.com/file.zip -s 16

# Download to specific directory
storm https://example.com/file.zip -o ~/Downloads

# Show all options
storm --help
```

## Features

- **Adaptive multi-segment downloads** - Automatically optimizes segment count
- **HTTP/1.1, HTTP/2, HTTP/3 support** - Uses the fastest protocol available
- **Resume capability** - Continue interrupted downloads
- **Bandwidth limiting** - Control download speed
- **Checksum verification** - Verify file integrity with BLAKE3

## Updating

```bash
brew update
brew upgrade storm
```

## Uninstalling

```bash
brew uninstall storm
brew untap Augani/stormdl
```
