class Glc < Formula
  desc "Git history file viewer - TUI for exploring files from git history"
  homepage "https://github.com/soomtong/gluck"
  url "https://github.com/soomtong/gluck/releases/download/v0.5.1/glc-arm64-darwin.tar.gz"
  version "0.5.1"
  sha256 "078af040d6ddafba24e4e4f85fa6ca388d35a90a63b3fa0f839b1f5a0ce2e5a8"
  license "MIT"

  def install
    bin.install "glc"
  end

  test do
    system "#{bin}/glc", "--help"
  end
end
