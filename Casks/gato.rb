cask "gato" do
  version "1.0.6"
  sha256 "181b6e3b79025913f4cf71685d203991f569645a6f0d85a10ab36a3830b14d85"

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
