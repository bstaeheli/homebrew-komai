cask "komai" do
  version "2026.06.28.0"
  sha256 "6fcc1686c33731dc669b1a5547c6efdc77d0b76f6ffd371af5eadc84480219f9"

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
  depends_on macos: ">= :ventura"

  app "komai.app"

  caveats <<~EOS
    Komai is not signed or notarized by Apple, so Gatekeeper blocks the first
    launch. To open it:
      * macOS 13/14: right-click komai.app in /Applications and choose "Open".
      * macOS 15+:   try to open it once, then go to
                     System Settings -> Privacy & Security -> "Open Anyway".
  EOS
end
