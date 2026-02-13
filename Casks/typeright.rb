cask "typeright" do
  version "0.3.0"
  sha256 "7a4cde8e7e11769623f7dd76bd38c4af542c5512cc0d0912e3fb0a9645fbd7b0"
  url "https://github.com/ViGeng/TypeRight/releases/download/v0.3.0/TypeRight.zip"
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
