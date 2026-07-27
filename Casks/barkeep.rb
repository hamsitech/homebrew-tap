cask "barkeep" do
  version "1.1.1"
  sha256 "aa499db65676d2592ca65a2b12c67242a8f5358a3852b825655adb87267743b1"

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
