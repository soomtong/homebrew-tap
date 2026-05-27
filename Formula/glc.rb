class Glc < Formula
  desc "Git history file viewer - TUI for exploring files from git history"
  homepage "https://github.com/soomtong/gluck"
  url "https://github.com/soomtong/gluck/releases/download/v0.9.3/glc-0.9.3-darwin-aarch64.tar.gz"
  version "0.9.3"
  sha256 "f0f3117795cea1b5315130d8ed3c85ca02a6bc72d4d0632612322393694aa8bb"
  license "MIT"

  def install
    bin.install "glc"
  end

  test do
    system "#{bin}/glc", "--help"
  end
end
