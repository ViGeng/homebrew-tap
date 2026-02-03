cask "typeright" do
  version "0.2.0"
  sha256 "d33cc45de07f56f5cc073a00e752578c7fc23bd77490c80e08d49d377fbe08f0"
  url "https://github.com/ViGeng/TypeRight/releases/download/v0.2.0/TypeRight.zip"
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
