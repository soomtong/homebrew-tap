class Glc < Formula
  desc "Git history file viewer - TUI for exploring files from git history"
  homepage "https://github.com/soomtong/gluck"
  url "https://github.com/soomtong/gluck/releases/download/v0.14.0/glc-0.14.0-darwin-aarch64.tar.gz"
  version "0.14.0"
  sha256 "acf11915af05d1316ff71b3f86a658de13d7399f1ba611e15538fc360767a311"
  license "MIT"

  def install
    bin.install "glc"
  end

  test do
    system "#{bin}/glc", "--help"
  end
end
