cask "tracefence" do
  version "1.0.71"
  sha256 "287630e91f9a2487aeb35075377aa6113118683d6b7b18aff552f54a2c90fd1c"

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
