cask "flow" do
  version "1.1.2"
  sha256 "bc374b3252567853b7d7ab382dec39c4b3b66fe759acdeb9c9d878b03ab81456"

  url "https://github.com/ViGeng/flow/releases/download/v1.1.2/Flow-1.1.2.dmg"
  name "Flow"
  desc "Event-driven task manager backed by a recursive Markdown tree"
  homepage "https://github.com/ViGeng/flow"

  app "Flow.app"

  zap trash: [
    "~/Library/Preferences/com.vigeng.Flow.plist",
    "~/Library/Application Support/Flow",
  ]
end
