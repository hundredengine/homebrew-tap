cask "macarum" do
  version "1.0.0"
  sha256 "680566125efacff5957fe678298f0c2c94dd8610ecbe160f03268c49cfc2c278"

  url "https://hundredengine.id/download/macarum/Macarum-#{version}.dmg"
  name "Macarum"
  desc "Menu bar clipboard history, memory check and file converter"
  homepage "https://hundredengine.id/work/macarum/"

  depends_on macos: :tahoe

  app "Macarum.app"

  uninstall quit: "id.hundredengine.macarum"

  zap trash: [
    "~/Library/Application Support/Macarum",
    "~/Library/Preferences/id.hundredengine.macarum.plist",
  ]
end
