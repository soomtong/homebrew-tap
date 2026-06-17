class Glc < Formula
  desc "Git history file viewer - TUI for exploring files from git history"
  homepage "https://github.com/soomtong/gluck"
  url "https://github.com/soomtong/gluck/releases/download/v0.10.1/glc-0.10.1-darwin-aarch64.tar.gz"
  version "0.10.1"
  sha256 "b75b1f0e8c46cb6537600279f7cd4eac89f28f6f4bcaca5df08a522402cdfa97"
  license "MIT"

  def install
    bin.install "glc"
  end

  test do
    system "#{bin}/glc", "--help"
  end
end
