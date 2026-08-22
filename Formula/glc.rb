class Glc < Formula
  desc "Git history file viewer - TUI for exploring files from git history"
  homepage "https://github.com/soomtong/gluck"
  url "https://github.com/soomtong/gluck/releases/download/v0.12.0/glc-0.12.0-darwin-aarch64.tar.gz"
  version "0.12.0"
  sha256 "413666f675e8c4325447e850ad4fffe842bbf66f507c23006c22f66f63a5c99d"
  license "MIT"

  def install
    bin.install "glc"
  end

  test do
    system "#{bin}/glc", "--help"
  end
end
