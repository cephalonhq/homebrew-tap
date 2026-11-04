cask "lyonis" do
  version "0.1.4"
  sha256 "32fd578776439612213b0c3647058acd38e9456222451129ee963e5bd50685a3"

  url "https://downloads.cephalon.dev/lyonis/#{version}/Lyonis-#{version}-arm64.zip"
  name "Lyonis"
  desc "Application for managing AI sessions and harnesses"
  homepage "https://cephalon.dev"

  depends_on arch: :arm64

  app "Lyonis.app"
  binary "#{appdir}/Lyonis.app/Contents/Resources/bin/lyonis"
end
