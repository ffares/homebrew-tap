cask "gato" do
  version "1.0.7"
  sha256 "3a117f26938df595a0173df2f594e5f2c0bc25a27a2fe76e96dc653885323b89"

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
