cask "gato" do
  version "1.0.1"
  sha256 "279c9a5de479b9cb95aeb3312a2430d1a4a41b52095c2c20231aa1eb44e2aa59"

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
