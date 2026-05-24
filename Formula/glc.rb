class Glc < Formula
  desc "Git history file viewer - TUI for exploring files from git history"
  homepage "https://github.com/soomtong/gluck"
  url "https://github.com/soomtong/gluck/releases/download/v0.7.4/glc-0.7.4-darwin-aarch64.tar.gz"
  version "0.7.4"
  sha256 "8f0bbfc673f34e1b5ec49df18f3fdaede539482d57d9e4aeb51d7fe0f00a093e"
  license "MIT"

  def install
    bin.install "glc"
  end

  test do
    system "#{bin}/glc", "--help"
  end
end
