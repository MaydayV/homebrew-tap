class Tetr < Formula
  desc "Terminal real-time translation assistant"
  homepage "https://github.com/MaydayV/Terminal-Translation"
  license "MIT"
  version "0.1.12"
  depends_on arch: :arm64

  url "https://github.com/MaydayV/Terminal-Translation/releases/download/v#{version}/tetr-v#{version}-macos-arm64.tar.gz"
  sha256 "380204cd3fdaec0d7c5fd7bdafdffb75c8741847fdd7b84b2b07f1f32e2982ba"

  def install
    bin.install "tetr"
    bin.install "tetr-ui"
  end

  test do
    assert_match "Terminal Translation Assistant", shell_output("#{bin}/tetr --help")
  end
end
