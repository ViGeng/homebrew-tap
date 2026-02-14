cask "flow" do
  version "1.1.6"
  sha256 "0e6865d465f8065cad2be29fa44ec6936a26fe5e955fc826e8a35c517b1bcead"

  url "https://github.com/ViGeng/flow/releases/download/v1.1.6/Flow-1.1.6.dmg"
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
