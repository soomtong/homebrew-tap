class Glc < Formula
  desc "Git history file viewer - TUI for exploring files from git history"
  homepage "https://github.com/soomtong/gluck"
  url "https://github.com/soomtong/gluck/releases/download/v0.18.0/glc-0.18.0-darwin-aarch64.tar.gz"
  version "0.18.0"
  sha256 "01ab4147c88e98843b00ab7eef493598dfa0020abad3ffdf8806fca472201e05"
  license "MIT"

  def install
    bin.install "glc"
  end

  test do
    system "#{bin}/glc", "--help"
  end
end
