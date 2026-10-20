cask "naskh" do
  version "0.3.1"
  sha256 "9c5032ddc3a7d6a780b0873e9173a96c6732c99e4063918ee7f11ebd97d4678d"

  url "https://github.com/ffares/mac-apps/releases/download/naskh-v#{version}/naskh-#{version}.dmg"
  name "Naskh"
  desc "Private clipboard history, screenshot capture, and annotation tools"
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
