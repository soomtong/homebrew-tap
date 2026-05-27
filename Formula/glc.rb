class Glc < Formula
  desc "Git history file viewer - TUI for exploring files from git history"
  homepage "https://github.com/soomtong/gluck"
  url "https://github.com/soomtong/gluck/releases/download/v0.9.5/glc-0.9.5-darwin-aarch64.tar.gz"
  version "0.9.5"
  sha256 "7401457a6d7d982337abd0f8a439a14de641dc679d5d56e1bb3e2787f1624218"
  license "MIT"

  def install
    bin.install "glc"
  end

  test do
    system "#{bin}/glc", "--help"
  end
end
