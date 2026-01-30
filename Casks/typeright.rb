cask "typeright" do
  version "0.1.0"
  sha256 "7856d99cd501cf16cad59a23526d4c10cd3c94741b2537225034e93e3662360c"
  url "https://github.com/ViGeng/TypeRight/releases/download/v0.1.0/TypeRight.zip"
  name "TypeRight"
  desc "Menu bar app to track backspace ratio and improve typing efficiency"
  homepage "https://github.com/ViGeng/TypeRight"
  depends_on macos: ">= :ventura"
  app "TypeRight.app"
  zap trash: ["~/Library/Preferences/com.vigeng.TypeRight.plist"]
end
