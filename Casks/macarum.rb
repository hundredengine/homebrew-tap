cask "macarum" do
  version "0.5.0"
  sha256 "296103bb555d93f3e63e19966b9722bdc0dd5fe5008c999a81429a5029474027"

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
