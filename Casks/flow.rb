cask "flow" do
  version "1.1.10"
  sha256 "889cc99b41990464f50cae1a5dd8fa58cf0d26fbecfa1fa8de83af671e08af07"

  url "https://github.com/ViGeng/flow/releases/download/v1.1.10/Flow-1.1.10.dmg"
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
