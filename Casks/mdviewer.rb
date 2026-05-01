cask "mdviewer" do
  version "1.0.0"
  sha256 "e51fafbe9e7a5fe70cd74ea24a0eaa336307ca783fd0c07a715c1f55a7e3737b"

  url "https://github.com/trsdn/mdviewer/releases/download/v#{version}/MDViewer.app.zip",
      verified: "github.com/trsdn/mdviewer/"
  name "MDViewer"
  desc "Minimal macOS Markdown viewer"
  homepage "https://trsdn.github.io/mdviewer/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sequoia"

  app "MDViewer.app"
end
