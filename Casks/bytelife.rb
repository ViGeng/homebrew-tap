cask "bytelife" do
  version "0.9.1"
  sha256 "844ef982a3c475c730d4534e5f6e2cf13dcd1bd2b8e25f1c5bf768b9b31a0040"

  url "https://github.com/ViGeng/byteslife/releases/download/v#{version}/ByteLife-#{version}.zip"
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
