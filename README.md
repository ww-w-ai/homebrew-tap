# ww-w-ai Homebrew Tap

Homebrew tap for [ww-w.ai](https://ww-w.ai) macOS apps and CLI tools.

```bash
brew tap ww-w-ai/tap
```

## Available Casks

### AgentRunner

A tiny pixel hero who fights for you — your hard-working AI agent, live on your menu bar.
[Repo](https://github.com/ww-w-ai/AgentRunner) · [Latest release](https://github.com/ww-w-ai/AgentRunner/releases)

```bash
brew install --cask agentrunner
```

Then launch from Spotlight or `/Applications/AgentRunner.app`. Right-click the menu bar character to access settings.

## Available Formulae

### keeph

Keep your Mac awake for exactly N hours, then auto-restore sleep. Lid-close safe.
[Repo](https://github.com/ww-w-ai/keeph)

```bash
brew install keeph
```

After install, source the function in your `~/.zshrc` (path is shown in `caveats`), then run `keeph -h`.

## Why Homebrew?

One-line install, automatic version management via `brew upgrade`, and clean uninstall. No manual download, drag-to-Applications, or `~/.zshrc` editing.

## Updates

```bash
brew update            # refresh tap
brew upgrade           # upgrade everything
# or target a single package:
brew upgrade --cask agentrunner
brew upgrade keeph
```

## Uninstall

```bash
brew uninstall --cask agentrunner
brew uninstall keeph
brew untap ww-w-ai/tap   # optional, removes the tap entirely
```

## Contributing

Issues and PRs welcome on the individual project repositories:
- [AgentRunner](https://github.com/ww-w-ai/AgentRunner)
- [keeph](https://github.com/ww-w-ai/keeph)

For tap-specific issues (formula bugs, install errors), open an issue here.
