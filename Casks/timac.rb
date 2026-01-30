cask "timac" do
  version "1.0.3"
  sha256 "343eb8e3a9629c97d51b40fbbd655a93ead34ca4491097603a9271871ddd362b"

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
