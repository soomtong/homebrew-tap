class Glc < Formula
  desc "Git history file viewer - TUI for exploring files from git history"
  homepage "https://github.com/soomtong/gluck"
  url "https://github.com/soomtong/gluck/releases/download/v0.5.10/glc-0.5.10-darwin-aarch64.tar.gz"
  version "0.5.10"
  sha256 "ee727c15d7e9cf30cd6eca415ff36898cf87e2f99ecbbb360053cd5917c9da52"
  license "MIT"

  def install
    bin.install "glc"
  end

  test do
    system "#{bin}/glc", "--help"
  end
end
