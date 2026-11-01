class Glc < Formula
  desc "Git history file viewer - TUI for exploring files from git history"
  homepage "https://github.com/soomtong/gluck"
  url "https://github.com/soomtong/gluck/releases/download/v0.19.2/glc-0.19.2-darwin-aarch64.tar.gz"
  version "0.19.2"
  sha256 "58e6c6b42dbaababaa361042048b705a43cb9aa29db9c3c11c36ef7ceefadc47"
  license "MIT"

  def install
    bin.install "glc"
  end

  test do
    system "#{bin}/glc", "--help"
  end
end
