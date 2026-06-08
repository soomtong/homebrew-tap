class Glc < Formula
  desc "Git history file viewer - TUI for exploring files from git history"
  homepage "https://github.com/soomtong/gluck"
  url "https://github.com/soomtong/gluck/releases/download/v0.9.6/glc-0.9.6-darwin-aarch64.tar.gz"
  version "0.9.6"
  sha256 "e534cc53a631ec3f49e69d9776b75b2e70e02e8a6f5edd79637b0df1f858ef3a"
  license "MIT"

  def install
    bin.install "glc"
  end

  test do
    system "#{bin}/glc", "--help"
  end
end
