cask "lyonis" do
  version "0.1.1"
  sha256 "8690498702282e613a50773acd92e72882f0e08b4ab859f9dd9feda0f4c3e0e1"

  url "https://downloads.cephalon.dev/lyonis/#{version}/Lyonis-#{version}-arm64.zip"
  name "Lyonis"
  desc "Application for managing AI sessions and harnesses"
  homepage "https://cephalon.dev"

  depends_on arch: :arm64

  app "Lyonis.app"
end
