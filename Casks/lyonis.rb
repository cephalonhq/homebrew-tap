cask "lyonis" do
  version "0.2.2"
  sha256 "73cec4b8c0f50761caaa46dff8218e4967b58ac1c7215b785bb85836c33d5a22"

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
