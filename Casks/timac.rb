cask "timac" do
  version "1.1.1"
  sha256 "467a07092e6fcc7ef33897514c3b3566ba5d4f45340b0eaf4d91d5a3820fa9cd"

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
