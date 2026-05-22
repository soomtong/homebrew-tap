class Glc < Formula
  desc "Git history file viewer - TUI for exploring files from git history"
  homepage "https://github.com/soomtong/gluck"
  url "https://github.com/soomtong/gluck/releases/download/v0.5.4/glc-arm64-darwin.tar.gz"
  version "0.5.4"
  sha256 "517341469205343607cab1e8359bc6278e9c18be858d76b47e5ba125cedc8884"
  license "MIT"

  def install
    bin.install "glc"
  end

  test do
    system "#{bin}/glc", "--help"
  end
end
