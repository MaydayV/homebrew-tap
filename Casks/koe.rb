cask "koe" do
  version "1.0.8"
  sha256 "84f527a7d87366a9f789111ad5c29e464c161da032c0d3f9e55e4c0b17a39e34"

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
