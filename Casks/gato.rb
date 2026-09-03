cask "gato" do
  version "1.0.2"
  sha256 "e00143911f6a9a0261cff7cb62edb05e11e42193dc2bccae7875be4eb7d99c2f"

  url "https://fares.net/gato/gato-#{version}.dmg"
  name "gato"
  desc "Terminal with whiskers: tabs, splits, SSH logins and a widget panel"
  homepage "https://fares.net/gato/"

  livecheck do
    url "https://fares.net/gato/latest.json"
    regex(/"version"\s*:\s*"([^"]+)"/i)
  end

  depends_on macos: :tahoe
  depends_on arch: :arm64

  app "gato.app"

  zap trash: [
    "~/Library/Application Support/gato",
    "~/Library/Saved Application State/net.fares.gato.savedState",
    "~/Library/Preferences/net.fares.gato.plist",
    "~/.config/gato",
  ]
end
