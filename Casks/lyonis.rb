cask "lyonis" do
  version "0.1.3"
  sha256 "27b494538336c1290590438a66220177166f30c25170af0237bac891dde8dcde"

  url "https://downloads.cephalon.dev/lyonis/#{version}/Lyonis-#{version}-arm64.zip"
  name "Lyonis"
  desc "Application for managing AI sessions and harnesses"
  homepage "https://cephalon.dev"

  depends_on arch: :arm64

  app "Lyonis.app"
  binary "#{appdir}/Lyonis.app/Contents/Resources/bin/lyonis"
end
