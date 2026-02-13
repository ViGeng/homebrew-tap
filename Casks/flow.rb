cask "flow" do
  version "1.1.3"
  sha256 "1f480c221952cbe7dfdf87a2370c0aea9b56fc27a6983c0d407278e10e3ff2a3"

  url "https://github.com/ViGeng/flow/releases/download/v1.1.3/Flow-1.1.3.dmg"
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
