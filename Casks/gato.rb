cask "gato" do
  version "1.0.10"
  sha256 "f22dc971522d0496aa84a2d39f1cc1cf9642b74ca35f48949d3a5a61f69b2aba"

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
