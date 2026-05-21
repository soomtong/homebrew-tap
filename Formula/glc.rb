class Glc < Formula
  desc "Git history file viewer - TUI for exploring files from git history"
  homepage "https://github.com/soomtong/gluck"
  url "https://github.com/soomtong/gluck/releases/download/v0.2.1/glc-arm64-darwin.tar.gz"
  version "0.2.1"
  sha256 "02b4ef7717030ed9bde079a4789bce9cbedc97b0a0e8d628e9f33c2bef2e5336"
  license "MIT"

  def install
    bin.install "glc"
  end

  test do
    system "#{bin}/glc", "--help"
  end
end
