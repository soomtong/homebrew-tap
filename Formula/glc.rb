class Glc < Formula
  desc "Git history file viewer - TUI for exploring files from git history"
  homepage "https://github.com/soomtong/gluck"
  url "https://github.com/soomtong/gluck/releases/download/v0.9.0/glc-0.9.0-darwin-aarch64.tar.gz"
  version "0.9.0"
  sha256 "20c6005734ce7b306169084cdcb6ca6fa46958fd19182c26651ee653ba106296"
  license "MIT"

  def install
    bin.install "glc"
  end

  test do
    system "#{bin}/glc", "--help"
  end
end
