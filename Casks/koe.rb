cask "koe" do
  version "1.0.9"
  sha256 "efb7fc61adef7c64289ef548a56cb74d86ce19446975e0b648d5eb315a225551"

  url "https://github.com/MaydayV/koe/releases/download/v#{version}/Koe-macOS-arm64.zip"
  name "Koe"
  desc "A zero-GUI macOS voice input tool"
  homepage "https://github.com/MaydayV/koe"

  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  app "Koe.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-rd", "com.apple.quarantine", "#{appdir}/Koe.app"]
  end

  uninstall_postflight do
    require "fileutils"

    FileUtils.rm_rf(File.expand_path("~/.koe"))
  end
end
