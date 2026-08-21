cask "komai" do
  version "2026.08.20.0"
  sha256 "c718063030ee9f4271f2ae9ea5e3dbb59ec6a238a1a9dfdea3d59bdc77731e34"

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
