cask "bytelife" do
  version "0.7.0"
  sha256 "354c2daad7524710cef715249848d449c5d7edd93b8b5a933aaaf7dad86e0493"

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
