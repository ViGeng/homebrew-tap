cask "typeright" do
  version "0.1.2"
  sha256 "28d4710f78d6beceba8100bc718b6197df80b81ebf34751b3c2a621ac05ee8a1"
  url "https://github.com/ViGeng/TypeRight/releases/download/v0.1.2/TypeRight.zip"
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
