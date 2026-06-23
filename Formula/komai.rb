class Komai < Formula
  desc "A personal finance tracker with powerful budgeting tools"
  homepage "https://github.com/etkecc/komai"
  license "MIT"

  url "https://github.com/etkecc/komai/releases/download/v2026.06.22.0/komai-2026.06.22.0-macos-arm64.dmg"
  sha256 "51315b070e11ce9f54c4ab2f300bb0afc8db64b72e5967e145d5da494476ec30"

  on_macos do
    depends_on :arch => :arm64
  end

  def install
    app = "komai.app"
    # Mount the DMG and extract the app
    system "hdiutil", "attach", cached_download, "-mountpoint", "mnt"
    system "cp", "-r", "mnt/komai.app", app
    system "hdiutil", "detach", "mnt"

    # Install the app to Applications folder via Homebrew
    prefix.install app
  end

  def caveats
    <<~EOS
      komai has been installed to:
        #{prefix}/komai.app

      To run komai from the command line, you may want to create an alias:
        alias komai="open #{prefix}/komai.app"

      Or add this to your shell profile (~/.zshrc or ~/.bash_profile)
    EOS
  end

  test do
    assert_predicate "#{prefix}/komai.app", :exist?
  end
end
