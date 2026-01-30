cask "typeright" do
  version "0.1.3"
  sha256 "85cd9e68806487e0bbc42773012e27e86477293cf4f47446ec3a0a7b6a9c80bf"
  url "https://github.com/ViGeng/TypeRight/releases/download/v0.1.3/TypeRight.zip"
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
