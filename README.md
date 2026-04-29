# ww-w-ai Homebrew Tap

Homebrew tap for [ww-w.ai](https://ww-w.ai) macOS apps.

## Available Casks

### AgentRunner

A tiny pixel hero who fights for you — your hard-working AI agent, live on your menu bar.
[Repo](https://github.com/ww-w-ai/AgentRunner) · [Latest release](https://github.com/ww-w-ai/AgentRunner/releases)

```bash
brew tap ww-w-ai/tap
brew install --cask agentrunner
```

Then launch from Spotlight or `/Applications/AgentRunner.app`. Right-click the menu bar character to access settings.

## Why Homebrew?

The apps in this tap are ad-hoc signed (no Apple Developer ID) — so when you download a DMG directly, macOS Gatekeeper blocks the first launch. Homebrew handles the quarantine attribute automatically, so `brew install --cask` "just works" without the right-click → Open dance.

## Updates

```bash
brew update
brew upgrade --cask agentrunner
```

## Uninstall

```bash
brew uninstall --cask agentrunner
brew untap ww-w-ai/tap   # optional
```
