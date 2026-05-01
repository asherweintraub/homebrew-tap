cask "openwork" do
  version "0.12.3"
  arch arm: "aarch64", intel: "x64"
  sha256 arm: "1e17060c9dd39fc18065a4bca67b7b5fa4805bb8eba8328e217f5147fd2e4271",
         intel: "d43fa27632d86872c4928edce122d9fcdf6d37393bdb41883a11b0d79c2533c5"

  url "https://github.com/different-ai/openwork/releases/download/v#{version}/openwork-desktop-darwin-#{arch}.dmg",
      verified: "github.com/different-ai/openwork/"
  name "OpenWork"
  desc "Open-source alternative to Claude Cowork built for teams"
  homepage "https://openworklabs.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "OpenWork.app"

  zap trash: [
    "~/Library/Application Support/com.differentai.openwork",
    "~/Library/Caches/com.differentai.openwork",
    "~/Library/HTTPStorages/com.differentai.openwork",
    "~/Library/Preferences/com.differentai.openwork.plist",
    "~/Library/Saved Application State/com.differentai.openwork.savedState",
  ]
end
