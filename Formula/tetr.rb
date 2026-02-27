class Tetr < Formula
  desc "Terminal real-time translation assistant"
  homepage "https://github.com/MaydayV/Terminal-Translation"
  license "MIT"
  version "0.1.14"
  depends_on arch: :arm64

  url "https://github.com/MaydayV/Terminal-Translation/releases/download/v#{version}/tetr-v#{version}-macos-arm64.tar.gz"
  sha256 "3f9d5c9da6171bab773025f016ded4e68e427a867c1e76468f68b54a48fd8ad5"

  def install
    bin.install "tetr"
    bin.install "tetr-ui"
  end

  test do
    assert_match "Terminal Translation Assistant", shell_output("#{bin}/tetr --help")
  end
end
