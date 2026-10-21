class Glc < Formula
  desc "Git history file viewer - TUI for exploring files from git history"
  homepage "https://github.com/soomtong/gluck"
  url "https://github.com/soomtong/gluck/releases/download/v0.16.0/glc-0.16.0-darwin-aarch64.tar.gz"
  version "0.16.0"
  sha256 "a9ff2b8528f8e48b1be0f6013d79d125ce334b7c9d826263404b45393afa5df0"
  license "MIT"

  def install
    bin.install "glc"
  end

  test do
    system "#{bin}/glc", "--help"
  end
end
