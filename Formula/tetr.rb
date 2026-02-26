class Tetr < Formula
  desc "Terminal real-time translation assistant"
  homepage "https://github.com/MaydayV/Terminal-Translation"
  license "MIT"
  version "0.1.6"
  depends_on arch: :arm64

  url "https://github.com/MaydayV/Terminal-Translation/releases/download/v#{version}/tetr-v#{version}-macos-arm64.tar.gz"
  sha256 "673129063c8367df22e7c1672e9e549d6e31adb8454088af18ef5b270493d8b3"

  def install
    bin.install "tetr"
    bin.install "tetr-ui"
  end

  test do
    assert_match "Terminal Translation Assistant", shell_output("#{bin}/tetr --help")
  end
end
