cask "komai" do
  version "2026.08.04.1"
  sha256 "993cefaf3e68c68972bc2c65beb5631f3d0be26bad5eac4a1987686e518aafe2"

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
