cask "komai" do
  version "2026.07.07.1"
  sha256 "ec930f7c58348c43ec084870c1029258eee38362da00136e1dc46b59600e7ab4"

  url "https://github.com/etkecc/komai/releases/download/v#{version}/komai-#{version}-macos-arm64.dmg",
      verified: "github.com/etkecc/komai/"
  name "Komai"
  desc "Matrix chat client"
  homepage "https://github.com/etkecc/komai"

  livecheck do
    url "https://github.com/etkecc/komai/releases/latest"
    strategy :github_latest
  end

  # Komai only ships an Apple Silicon DMG, and it targets macOS 13.3+.
  depends_on arch: :arm64
  depends_on macos: :ventura

  app "komai.app"
end
