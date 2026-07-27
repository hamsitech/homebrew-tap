cask "barkeep" do
  version "1.2.0"
  sha256 "2714902abc21f2306561a14acfe5182fb2288f1a7e81a51a767c294969d3cbb1"

  url "https://github.com/hamsitech/Barkeep/releases/download/v#{version}/Barkeep-#{version}.zip"
  name "Barkeep"
  desc "Menu bar app for managing Homebrew services"
  homepage "https://github.com/hamsitech/Barkeep"

  depends_on macos: :ventura

  app "Barkeep.app"

  caveats <<~EOS
    Barkeep is ad-hoc signed. If macOS refuses to open it:
      xattr -dr com.apple.quarantine "#{appdir}/Barkeep.app"
  EOS
end
