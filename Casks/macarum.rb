cask "macarum" do
  version "0.4.1"
  sha256 "f7b824dc5470807f5beade7044253e25b0e41ae7e15e6aeebe2c136258a9a023"

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
