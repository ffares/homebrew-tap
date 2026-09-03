cask "gato" do
  version "1.0.3"
  sha256 "a0206f6ad1733efbcc4fbbecd855c7c44bf60b715f7b7209792036ff1fb373d4"

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
