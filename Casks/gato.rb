cask "gato" do
  version "1.0.14"
  sha256 "cd62ab396539bf34d4e9c559b32987b8f254a2582e95f047deb6daf1b15271ce"

  url "https://github.com/ffares/mac-apps/releases/download/gato-v#{version}/gato-#{version}.dmg"
  name "gato"
  desc "Terminal with tabs, splits, SSH logins and a widget panel"
  homepage "https://fares.net/gato/"

  livecheck do
    url "https://fares.net/gato/latest.json"
    regex(/"version"\s*:\s*"([^"]+)"/i)
  end

  depends_on macos: :tahoe
  depends_on arch: :arm64

  app "gato.app"

  zap trash: [
    "~/.config/gato",
    "~/Library/Application Support/gato",
    "~/Library/Preferences/net.fares.gato.plist",
    "~/Library/Saved Application State/net.fares.gato.savedState",
  ]
end
