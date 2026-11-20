cask "lyonis" do
  version "0.4.0"
  sha256 "6a0e0ee797b70839289e360034604f3f2886214f96dab180ed15f01898316ea4"

  url "https://downloads.cephalon.dev/lyonis/#{version}/Lyonis-#{version}-arm64.zip"
  name "Lyonis"
  desc "Application for managing AI sessions and harnesses"
  homepage "https://cephalon.dev"

  auto_updates true
  depends_on arch: :arm64

  preflight_steps do
    if_path_exists "{{appdir}}/Lyonis.app" do
      warn "Lyonis.app is already in {{appdir}}. If brew stops because of it, run: brew install --force cephalonhq/tap/lyonis"
    end
  end

  app "Lyonis.app"
  binary "#{appdir}/Lyonis.app/Contents/Resources/bin/lyonis"
end
