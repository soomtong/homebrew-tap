class Glc < Formula
  desc "Git history file viewer - TUI for exploring files from git history"
  homepage "https://github.com/soomtong/gluck"
  url "https://github.com/soomtong/gluck/releases/download/v0.4.0/glc-arm64-darwin.tar.gz"
  version "0.4.0"
  sha256 "51b40ca80bea071cd1c2f1d52a0b078914bbe76844541a9e272c9712b161a23a"
  license "MIT"

  def install
    bin.install "glc"
  end

  test do
    system "#{bin}/glc", "--help"
  end
end
