class Glc < Formula
  desc "Git history file viewer - TUI for exploring files from git history"
  homepage "https://github.com/soomtong/gluck"
  url "https://github.com/soomtong/gluck/releases/download/v0.10.0/glc-0.10.0-darwin-aarch64.tar.gz"
  version "0.10.0"
  sha256 "110427c00f79ee6adbcd2b8bdf4b384e3240dcb4878f511d72b2459afb9e42ad"
  license "MIT"

  def install
    bin.install "glc"
  end

  test do
    system "#{bin}/glc", "--help"
  end
end
