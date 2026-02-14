cask "flow" do
  version "1.3.1"
  sha256 "fc06ace7351205dbea0e64a44efb3bdaef9830db7cbe3097d688f09af33569c8"

  url "https://github.com/ViGeng/flow/releases/download/v1.3.1/Flow-1.3.1.dmg"
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
