cask "gato" do
  version "1.0.0"
  sha256 "8fa242144d96e337f643b5ba11a9bc1e2e6e26c963d006b89532a123f488265e"

  url "https://fares.net/gato/gato-#{version}.dmg"
  name "gato"
  desc "Terminal with whiskers: tabs, splits, SSH logins and a widget panel"
  homepage "https://fares.net/gato/"

  livecheck do
    url "https://fares.net/gato/latest.json"
    regex(/"version"\s*:\s*"([^"]+)"/i)
  end

  depends_on macos: ">= :tahoe"
  depends_on arch: :arm64

  app "gato.app"

  zap trash: [
    "~/Library/Application Support/gato",
    "~/Library/Saved Application State/net.fares.gato.savedState",
    "~/Library/Preferences/net.fares.gato.plist",
    "~/.config/gato",
  ]
end
