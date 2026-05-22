class Glc < Formula
  desc "Git history file viewer - TUI for exploring files from git history"
  homepage "https://github.com/soomtong/gluck"
  url "https://github.com/soomtong/gluck/releases/download/v0.3.0/glc-arm64-darwin.tar.gz"
  version "0.3.0"
  sha256 "badc4f5e9e84696cd553749eb6741a125d395bc2894ac72f1a1a44ca90de5b12"
  license "MIT"

  def install
    bin.install "glc"
  end

  test do
    system "#{bin}/glc", "--help"
  end
end
