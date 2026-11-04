cask "lyonis" do
  version "0.1.2"
  sha256 "59a85bf95a437915a868553c5131fd866427963d4191b77d034e7c0cdd93f55e"

  url "https://downloads.cephalon.dev/lyonis/#{version}/Lyonis-#{version}-arm64.zip"
  name "Lyonis"
  desc "Application for managing AI sessions and harnesses"
  homepage "https://cephalon.dev"

  depends_on arch: :arm64

  app "Lyonis.app"
  binary "#{appdir}/Lyonis.app/Contents/Resources/bin/lyonis"
end
