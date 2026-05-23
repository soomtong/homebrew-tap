class Glc < Formula
  desc "Git history file viewer - TUI for exploring files from git history"
  homepage "https://github.com/soomtong/gluck"
  url "https://github.com/soomtong/gluck/releases/download/v0.5.13/glc-0.5.13-darwin-aarch64.tar.gz"
  version "0.5.13"
  sha256 "e98a0feb7debd29ce8b6d74933af66a5a38505b0c18de5493c5c06ae5f70d6c6"
  license "MIT"

  def install
    bin.install "glc"
  end

  test do
    system "#{bin}/glc", "--help"
  end
end
