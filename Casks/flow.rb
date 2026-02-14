cask "flow" do
  version "1.3.0"
  sha256 "0c455ea98b0ff6477a3693784110981663bf002f08aaa0bf30fbef92833284ba"

  url "https://github.com/ViGeng/flow/releases/download/v1.3.0/Flow-1.3.0.dmg"
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
