cask "brewstation" do
  version "2.0.5"
  sha256 "342c2b86e49120a7f3b8b72c1bd5dfc72962b71e0627bf2c0b26e732b93d1d9a"

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
