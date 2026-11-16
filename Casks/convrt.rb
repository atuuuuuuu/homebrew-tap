cask "convrt" do
  version "1.0.1"
  sha256 "57cf7d844d7babc6b0e3700d7115e5caca00a494574c4755fe7842bceb19683d"

  url "https://github.com/atuuuuuuu/Convrt/releases/download/v#{version}/Convrt-macOS.zip"
  name "Convrt"
  desc "Menu bar file converter: hold Shift while dragging to open a conversion wheel"
  homepage "https://github.com/atuuuuuuu/Convrt"

  depends_on macos: :ventura

  app "Convrt.app"

  uninstall quit: "atu.testing.Convrt"

  zap trash: [
    "~/Library/Application Support/Convrt",
    "~/Library/Logs/Convrt.log",
    "~/Library/Preferences/atu.testing.Convrt.plist",
  ]

  caveats <<~EOS
    Convrt is not notarized. If macOS blocks it the first time, open
    System Settings > Privacy & Security and click Open Anyway.
    Then allow Accessibility and Input Monitoring when Convrt asks.
  EOS
end
