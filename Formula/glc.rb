class Glc < Formula
  desc "Git history file viewer - TUI for exploring files from git history"
  homepage "https://github.com/soomtong/gluck"
  url "https://github.com/soomtong/gluck/releases/download/v0.8.1/glc-0.8.1-darwin-aarch64.tar.gz"
  version "0.8.1"
  sha256 "085f46460becdb3954b8018f5a9e4422839c36ae816b813b6dae422178f544ca"
  license "MIT"

  def install
    bin.install "glc"
  end

  test do
    system "#{bin}/glc", "--help"
  end
end
