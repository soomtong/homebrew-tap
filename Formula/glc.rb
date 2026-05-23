class Glc < Formula
  desc "Git history file viewer - TUI for exploring files from git history"
  homepage "https://github.com/soomtong/gluck"
  url "https://github.com/soomtong/gluck/releases/download/v0.5.11/glc-0.5.11-darwin-aarch64.tar.gz"
  version "0.5.11"
  sha256 "f6bad40107167ce53b09635756c48ce3b48e1ed7911615e4023e795c093a2684"
  license "MIT"

  def install
    bin.install "glc"
  end

  test do
    system "#{bin}/glc", "--help"
  end
end
