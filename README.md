# HamsiTech Homebrew Tap

Homebrew casks for [HamsiTech](https://github.com/hamsitech) macOS apps.

```bash
brew tap hamsitech/tap
brew install --cask barkeep   # menu bar app for managing Homebrew services
brew install --cask kablo     # move files to and from an Android phone over USB
```

Or install in one step without tapping first: `brew install --cask hamsitech/tap/barkeep`.

The apps are ad-hoc signed, not notarized. If macOS blocks the first launch, clear the quarantine flag: `xattr -dr com.apple.quarantine "/Applications/<App>.app"`.
