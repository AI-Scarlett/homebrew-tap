# AI-Scarlett Homebrew Tap

Homebrew distribution for the signed and Apple-notarized TraceFence macOS local build.

## Install TraceFence

```bash
brew tap AI-Scarlett/tap
# Homebrew 6 and later require explicit trust for third-party casks.
brew trust --cask AI-Scarlett/tap/tracefence
brew install --cask tracefence
```

TraceFence requires an Apple Silicon Mac running macOS 13 or later. Homebrew versions before 6 can skip the `brew trust` line.

## Upgrade

```bash
brew update
brew upgrade --cask tracefence
```

The cask downloads the same DMG and SHA-256-verified release published in the official [TraceFence repository](https://github.com/AI-Scarlett/TraceFence/releases/latest).

Product website: [tracefence.com](https://tracefence.com/)
