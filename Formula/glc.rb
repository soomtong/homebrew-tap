class Glc < Formula
  desc "Git history file viewer - TUI for exploring files from git history"
  homepage "https://github.com/soomtong/gluck"
  url "https://github.com/soomtong/gluck/releases/download/v0.19.1/glc-0.19.1-darwin-aarch64.tar.gz"
  version "0.19.1"
  sha256 "7432f47ee083ed8c1431b3cedb8eabccb54dc46cd3ff29d2bb243d84d96337ff"
  license "MIT"

  def install
    bin.install "glc"
  end

  test do
    system "#{bin}/glc", "--help"
  end
end
