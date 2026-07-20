cask "tracefence" do
  version "1.0.84"
  sha256 "294383ef7e249b016703a2eb7d2789b22ffc718e8bbec0cd357da9321d6acf33"

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
