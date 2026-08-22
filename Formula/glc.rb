class Glc < Formula
  desc "Git history file viewer - TUI for exploring files from git history"
  homepage "https://github.com/soomtong/gluck"
  url "https://github.com/soomtong/gluck/releases/download/v0.12.1/glc-0.12.1-darwin-aarch64.tar.gz"
  version "0.12.1"
  sha256 "f515b38a4596aa5c3c196caec609011d64238c8e513ea9033a0f922eb866156a"
  license "MIT"

  def install
    bin.install "glc"
  end

  test do
    system "#{bin}/glc", "--help"
  end
end
