class Glc < Formula
  desc "Git history file viewer - TUI for exploring files from git history"
  homepage "https://github.com/soomtong/gluck"
  url "https://github.com/soomtong/gluck/releases/download/v0.5.6/glc-0.5.6-darwin-aarch64.tar.gz"
  version "0.5.6"
  sha256 "92b10d8acb8373bb01265a2e41519a63de5527beae1e9a4fd58eb858db728e91"
  license "MIT"

  def install
    bin.install "glc"
  end

  test do
    system "#{bin}/glc", "--help"
  end
end
