cask "lyonis" do
  version "0.1.9"
  sha256 "1ee998fa9cbd546743c1de35eb5e6390c2160eab831dc0212822b002dc79b5d5"

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
