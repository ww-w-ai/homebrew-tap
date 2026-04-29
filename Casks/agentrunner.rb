cask "agentrunner" do
  version "1.0.8"
  sha256 "a364c5fa3612580bb676ca72216971f22622ead1b10275ac96ae5e649a066e45"

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
