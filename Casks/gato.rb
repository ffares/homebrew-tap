cask "gato" do
  version "1.0.12"
  sha256 "1ab8fa3700a3cfd737b5ae4bf252c45d7a470df4ffa8ff3d1aaa270c9b8d4209"

  url "https://github.com/ffares/gato-app/releases/download/v#{version}/gato-#{version}.dmg"
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
