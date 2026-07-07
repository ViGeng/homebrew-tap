cask "bytelife" do
  version "0.8.0"
  sha256 "43e3409686558d40d53f8554ba82bcbccf9892f3419e510b46f9e5a91ded507f"

  url "https://github.com/ViGeng/homebrew-tap/releases/download/bytelife-v#{version}/ByteLife-#{version}.zip"
  name "ByteLife"
  desc "Menu bar dashboard tracking your digital life in bytes"
  homepage "https://github.com/ViGeng/byteslife"

  depends_on macos: :sonoma

  app "ByteLife.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/ByteLife.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Support/ByteLife",
    "~/Library/Preferences/com.vigeng.bytelife.plist",
    "~/Library/Saved Application State/com.vigeng.bytelife.savedState",
  ]
end
