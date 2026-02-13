cask "flow" do
  version "1.1.4"
  sha256 "75be87bc65c751eb474ef444c76c91087df893ef5e71b30498dbfd0fe45877f9"

  url "https://github.com/ViGeng/flow/releases/download/v1.1.4/Flow-1.1.4.dmg"
  name "Flow"
  desc "Event-driven task manager backed by a recursive Markdown tree"
  homepage "https://github.com/ViGeng/flow"

  app "Flow.app"

  postflight do
    system_command "xattr",
                   args: ["-rd", "com.apple.quarantine", "#{appdir}/Flow.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Preferences/com.vigeng.Flow.plist",
    "~/Library/Application Support/Flow",
  ]
end
