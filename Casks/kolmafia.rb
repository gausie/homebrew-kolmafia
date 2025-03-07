cask "kolmafia" do
  version "26523"
  sha256 "c9b99beffb67153647b454bc5acdd41994ae2095bea9c750717c154ff23e321a"

  url "https://github.com/kolmafia/kolmafia/releases/download/r#{version}/Kolmafia-22.07.#{version}.dmg",
      verified: "github.com/kolmafia/kolmafia"
  name "KoLmafia"
  desc "Cross-platform application to interface with online RPG Kingdom of Loathing 🍸"
  homepage "https://kolmafia.us/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "KoLmafia.app"

  zap trash: "~/Library/Application Support/KoLmafia"

  caveats do
    depends_on_java "17+"
  end
end
