cask "flow" do
  version "1.1.7"
  sha256 "1d3fadf5bc28d0ecfc9549b408326f67e1e1ed045a1b73ee888558adc1d80163"

  url "https://github.com/ViGeng/flow/releases/download/v1.1.7/Flow-1.1.7.dmg"
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
