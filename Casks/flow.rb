cask "flow" do
  version "1.1.5"
  sha256 "6a61060969da88d0fd06366af2c97a37a7962c4a1838ac86cfddc922883df6c4"

  url "https://github.com/ViGeng/flow/releases/download/v1.1.5/Flow-1.1.5.dmg"
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
