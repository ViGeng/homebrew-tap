cask "bytelife" do
  version "0.6.0"
  sha256 "2001f6a2c860aa39095e69f212b0781d6b2bbecc2cd9c5b2781a5efec65dbae3"

  url "https://github.com/ViGeng/homebrew-tap/releases/download/bytelife-v#{version}/ByteLife-#{version}.zip"
  name "ByteLife"
  desc "Menu bar dashboard tracking your digital life in bytes"
  homepage "https://github.com/ViGeng/byteslife"

  depends_on macos: ">= :sonoma"

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
