cask "brewstation" do
  version "2.0.4"
  sha256 "9c5c71871447a468f1c342e875e761bd4158ec4a4bfa86ee3995104d266fc305"

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
