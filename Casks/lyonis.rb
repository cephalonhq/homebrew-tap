cask "lyonis" do
  version "0.4.1"
  sha256 "b23fa83861a7bad2e7ed52eab03fa696547140e89fc97defef329359f00fb84f"

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
