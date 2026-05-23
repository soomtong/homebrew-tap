class Glc < Formula
  desc "Git history file viewer - TUI for exploring files from git history"
  homepage "https://github.com/soomtong/gluck"
  url "https://github.com/soomtong/gluck/releases/download/v0.5.8/glc-0.5.8-darwin-aarch64.tar.gz"
  version "0.5.8"
  sha256 "7473db6b7007404e3081223a732b24019cb8fcc4d6b120f985b77dd03da6006e"
  license "MIT"

  def install
    bin.install "glc"
  end

  test do
    system "#{bin}/glc", "--help"
  end
end
