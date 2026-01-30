cask "typeright" do
  version "0.1.4"
  sha256 "235a3474bcdef563259a080b15618a2da75c50893311ebd6647a262870dbbda5"
  url "https://github.com/ViGeng/TypeRight/releases/download/v0.1.4/TypeRight.zip"
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
