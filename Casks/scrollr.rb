cask "scrollr" do
  version "1.0.1"
  sha256 "89a8c39f1b904b91907447f5867f20899473311aeaaba874e0ee5931cd72a617"

  url "https://github.com/atuuuuuuu/Scrollr/releases/download/v#{version}/Scrollr-macOS.zip"
  name "Scrollr"
  desc "Reverses scroll direction for external mice only, leaving the trackpad alone"
  homepage "https://github.com/atuuuuuuu/Scrollr"

  depends_on macos: :sonoma

  app "Scrollr.app"

  uninstall quit: "io.github.atuuuuuuu.Scrollr"

  zap trash: "~/Library/Preferences/io.github.atuuuuuuu.Scrollr.plist"

  caveats <<~EOS
    Scrollr is not notarized. If macOS blocks it the first time, open
    System Settings > Privacy & Security and click Open Anyway.
    Then allow Accessibility when Scrollr asks.
  EOS
end
