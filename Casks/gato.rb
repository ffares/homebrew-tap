cask "gato" do
  version "1.0.8"
  sha256 "2ba13d13a157a5c2ab587f0459ffe1d31a5d516098a8bf98c3dbb43d10648efa"

  url "https://fares.net/gato/gato-#{version}.dmg"
  name "gato"
  desc "Native macOS terminal with tabs, splits, SSH logins and a widget panel"
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
