cask "gato" do
  version "1.0.4"
  sha256 "57c79de4b21644e40c99ea79f0702967791484b31a47078d1b00662d7a095f59"

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
