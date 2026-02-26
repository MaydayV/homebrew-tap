class Tetr < Formula
  desc "Terminal real-time translation assistant"
  homepage "https://github.com/MaydayV/Terminal-Translation"
  license "MIT"
  version "0.1.8"
  depends_on arch: :arm64

  url "https://github.com/MaydayV/Terminal-Translation/releases/download/v#{version}/tetr-v#{version}-macos-arm64.tar.gz"
  sha256 "fbfa32ae4a3eab1e318a13adb0c39bd9e6a37c591915ff8fd118eec0bedb5651"

  def install
    bin.install "tetr"
    bin.install "tetr-ui"
  end

  test do
    assert_match "Terminal Translation Assistant", shell_output("#{bin}/tetr --help")
  end
end
