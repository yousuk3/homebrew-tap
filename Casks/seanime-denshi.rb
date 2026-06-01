cask "seanime-denshi" do
  version "3.8.3"
  sha256 "e25f6670c25a39e889902efc4dda7af58f793e6d68829d2b1cc95ce8c3b76b5d"

  url "https://github.com/5rahim/seanime/releases/download/v#{version}/seanime-denshi-#{version}_MacOS_arm64.dmg",
      verified: "github.com/5rahim/seanime/"
  name "Seanime Denshi"
  desc "Media server and desktop app for anime and manga"
  homepage "https://seanime.app/"

  livecheck do
    url "https://github.com/5rahim/seanime"
    strategy :github_latest
  end

  depends_on arch: :arm64

  app "Seanime Denshi.app"

  zap trash: [
    "~/Library/Application Support/Seanime Denshi",
    "~/Library/Application Support/Seanime",
    "~/Library/Caches/Seanime Denshi",
    "~/Library/Caches/app.seanime.denshi",
    "~/Library/Logs/Seanime Denshi",
    "~/Library/Preferences/app.seanime.denshi.plist",
    "~/Library/Saved Application State/app.seanime.denshi.savedState",
  ]
end