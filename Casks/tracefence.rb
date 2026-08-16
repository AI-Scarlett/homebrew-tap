cask "tracefence" do
  version "1.2.10"
  sha256 "3a02e455c97c2a3e3a427a3ad782a0af9b3823730bfd4d92a7dd4362b8baaeb9"

  url "https://github.com/AI-Scarlett/TraceFence/releases/download/v#{version}/TraceFence-v#{version}-arm64.dmg",
      verified: "github.com/AI-Scarlett/TraceFence/"
  name "TraceFence"
  desc "Control local AI coding agents from an iPhone"
  homepage "https://tracefence.com/"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :ventura

  app "TraceFence.app"

  zap trash: [
    "~/Library/Application Support/TraceFence",
    "~/Library/Caches/com.tracefence.app",
    "~/Library/HTTPStorages/com.tracefence.app",
    "~/Library/Preferences/com.tracefence.app.plist",
    "~/Library/Saved Application State/com.tracefence.app.savedState",
  ]
end
