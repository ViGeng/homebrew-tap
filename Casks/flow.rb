cask "flow" do
  version "1.2.0"
  sha256 "a8c512398e6fcb2656533b88b5d462e2cb6fb25604d835c4803ce732764a6262"

  url "https://github.com/ViGeng/flow/releases/download/v1.2.0/Flow-1.2.0.dmg"
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
