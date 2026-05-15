cask "brewstation" do
  version "2.0.3"
  sha256 "c1ab724172b786addad0e417b0407debaf10618ab1dc8b3aa2576868f17355d4"

  url "https://github.com/hreinssondev/brewstation/releases/download/#{version}/BrewStation.dmg"
  name "BrewStation"
  desc "Homebrew GUI manager with snapshot saving and restoring"
  homepage "https://github.com/hreinssondev/brewstation"

  depends_on macos: ">= :ventura"

  app "BrewStation.app"

  zap trash: [
    "~/Library/Application Support/BrewStation",
    "~/Library/Caches/BrewStation",
    "~/Library/Preferences/com.hreinssondev.brewstation.plist",
  ]
end
