cask "timac" do
  version "1.0.2"
  sha256 "d1c2673ff49e4cfa7804afa892606b9c895bd381e0cd997c19c558e528931025"

  url "https://github.com/ViGeng/Timac/releases/download/v#{version}/Timac.dmg"
  name "Timac"
  desc "Menu bar app for tracking time spent on applications"
  homepage "https://github.com/ViGeng/Timac"

  depends_on macos: ">= :ventura"

  app "Timac.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/Timac.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Support/Timac",
    "~/Library/Preferences/com.timac.Timac.plist",
    "~/Library/Saved Application State/com.timac.Timac.savedState",
  ]
end
