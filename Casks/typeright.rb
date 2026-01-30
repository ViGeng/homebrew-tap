cask "typeright" do
  version "0.1.1"
  sha256 "aa1815bca0c0b4e1bcde1db7bd92c530e44db5f02a15521f4b6b97d4693d27ae"
  url "https://github.com/ViGeng/TypeRight/releases/download/v0.1.1/TypeRight.zip"
  name "TypeRight"
  desc "Menu bar app to track backspace ratio and improve typing efficiency"
  homepage "https://github.com/ViGeng/TypeRight"
  depends_on macos: ">= :ventura"
  app "TypeRight.app"
  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", staged_path.to_s]
  end
  zap trash: ["~/Library/Preferences/com.vigeng.TypeRight.plist"]
end
