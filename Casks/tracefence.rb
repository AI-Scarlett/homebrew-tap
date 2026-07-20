cask "tracefence" do
  version "1.0.83"
  sha256 "1bc51ce6224b0a5b795511da4f8ae8793942c78aa6bcaa1b492ee513a1d09a6e"

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
