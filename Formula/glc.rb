class Glc < Formula
  desc "Git history file viewer - TUI for exploring files from git history"
  homepage "https://github.com/soomtong/gluck"
  url "https://github.com/soomtong/gluck/releases/download/v0.15.0/glc-0.15.0-darwin-aarch64.tar.gz"
  version "0.15.0"
  sha256 "46f24b4d192509a123c5392f255f9db9532414c01da80e6be3e36a494a1a26eb"
  license "MIT"

  def install
    bin.install "glc"
  end

  test do
    system "#{bin}/glc", "--help"
  end
end
