cask "barkeep" do
  version "1.1.0"
  sha256 "e5b96ff67548c68fbed24a7519f50f79041431041e51b001a54238791be36474"

  url "https://github.com/hamsitech/Barkeep/releases/download/v#{version}/Barkeep-#{version}.zip"
  name "Barkeep"
  desc "Menu bar app for managing Homebrew services"
  homepage "https://github.com/hamsitech/Barkeep"

  depends_on macos: ":ventura"

  app "Barkeep.app"

  caveats <<~EOS
    Barkeep is ad-hoc signed. If macOS refuses to open it:
      xattr -dr com.apple.quarantine "#{appdir}/Barkeep.app"
  EOS
end
