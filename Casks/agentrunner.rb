cask "agentrunner" do
  version "1.0"
  sha256 "77efdc0967d40a5bbfb2155855f7a2a74430124fc63107e4397c1fdceeafd2c3"

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

  zap trash: [
    "~/Library/Application Support/AgentRunner",
  ]
end
