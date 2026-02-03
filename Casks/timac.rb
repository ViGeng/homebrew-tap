cask "timac" do
  version "1.2.0"
  sha256 "0e92122d786c8b9d4eb62b512466976863b2eb8892a2fe63cf9cbbe6dc0ba9d4"

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
    "~/Library/Preferences/com.timac.Timac.plist",
    "~/Library/Saved Application State/com.timac.Timac.savedState",
  ]
end
