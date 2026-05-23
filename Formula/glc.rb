class Glc < Formula
  desc "Git history file viewer - TUI for exploring files from git history"
  homepage "https://github.com/soomtong/gluck"
  url "https://github.com/soomtong/gluck/releases/download/v0.5.7/glc-0.5.7-darwin-aarch64.tar.gz"
  version "0.5.7"
  sha256 "dfb7b7a280768ca6967b2fae3921cf75a1d9e2d741995c27ec58cbe7da363733"
  license "MIT"

  def install
    bin.install "glc"
  end

  test do
    system "#{bin}/glc", "--help"
  end
end
