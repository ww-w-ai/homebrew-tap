cask "agentrunner" do
  version "1.0.6"
  sha256 "e7703174280c25f3e17ccdbae19090ce74add8929294abf8a71e46b4a11d12fa"

  url "https://github.com/ww-w-ai/AgentRunner/releases/download/v#{version}/AgentRunner-#{version}.dmg"
  name "AgentRunner"
  desc "Tiny pixel hero in your menu bar that animates with your AI agent's traffic"
  homepage "https://github.com/ww-w-ai/AgentRunner"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "AgentRunner.app"

  postflight do
    system "/usr/bin/open", "-a", "AgentRunner"
  end

  uninstall quit:      "ai.ww-w.AgentRunner",
            launchctl: "ai.ww-w.AgentRunner"

  zap trash: [
    "~/Library/Application Support/AgentRunner",
  ]

  caveats <<~EOS
    AgentRunner runs in your menu bar — look for the pixel character in the
    top-right of your screen. It has no Dock icon by design.

    First-time tips:
      • Right-click the character → "Launch at login" to auto-start on boot
      • Right-click → "Open Providers Config…" to add custom LLM endpoints
      • Left-click to see active sessions

    Uninstall: brew uninstall --cask agentrunner
  EOS
end
