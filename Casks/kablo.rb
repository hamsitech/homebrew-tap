cask "kablo" do
  version "1.0.0"
  sha256 "522cb1f45f52eccfdf7c283b8b718af606b4578bbef39f608a856f00767b6508"

  url "https://github.com/hamsitech/Kablo/releases/download/v#{version}/Kablo.zip"
  name "Kablo"
  desc "Move files to and from an Android phone over USB"
  homepage "https://github.com/hamsitech/Kablo"

  depends_on macos: :ventura

  app "Kablo.app"

  caveats <<~EOS
    Kablo is ad-hoc signed. If macOS refuses to open it:
      xattr -dr com.apple.quarantine "#{appdir}/Kablo.app"
  EOS
end
