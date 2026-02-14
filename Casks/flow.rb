cask "flow" do
  version "1.3.2"
  sha256 "a4e25179cb4958136dd983990324b7a92d0c4233c6baf5f7f0843958eba2f2e7"

  url "https://github.com/ViGeng/flow/releases/download/v1.3.2/Flow-1.3.2.dmg"
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
