class Tetr < Formula
  desc "Terminal real-time translation assistant"
  homepage "https://github.com/MaydayV/Terminal-Translation"
  license "MIT"
  version "0.1.10"
  depends_on arch: :arm64

  url "https://github.com/MaydayV/Terminal-Translation/releases/download/v#{version}/tetr-v#{version}-macos-arm64.tar.gz"
  sha256 "06decb388aac1fb4225a5872becd778c95f8d9fdebf7b1e3f84e8be99fcd586c"

  def install
    bin.install "tetr"
    bin.install "tetr-ui"
  end

  test do
    assert_match "Terminal Translation Assistant", shell_output("#{bin}/tetr --help")
  end
end
