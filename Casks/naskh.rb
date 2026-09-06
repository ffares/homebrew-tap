cask "naskh" do
  version "0.2.0"
  sha256 "abc549acf8e7e26c48fed15e476d7da790b9c4f5448678b9dbeb3b61792dec16"

  url "https://github.com/ffares/mac-apps/releases/download/naskh-v#{version}/naskh-#{version}.dmg"
  name "Naskh"
  desc "Private clipboard history, templates, and a floating file shelf"
  homepage "https://fares.net/naskh/"

  livecheck do
    url "https://fares.net/naskh/latest.json"
    regex(/"version"\s*:\s*"([^"]+)"/i)
  end

  depends_on macos: :tahoe
  depends_on arch: :arm64

  app "Naskh.app"

  zap trash: [
    "~/Library/Application Support/Naskh",
    "~/Library/Preferences/app.naskh.mac.plist",
    "~/Library/Saved Application State/app.naskh.mac.savedState",
  ]
end
