class Glc < Formula
  desc "Git history file viewer - TUI for exploring files from git history"
  homepage "https://github.com/soomtong/gluck"
  url "https://github.com/soomtong/gluck/releases/download/v0.13.2/glc-0.13.2-darwin-aarch64.tar.gz"
  version "0.13.2"
  sha256 "e458c840999f725d0e06447d8b043a9065fc51e07fc91338041849ea57db9c82"
  license "MIT"

  def install
    bin.install "glc"
  end

  test do
    system "#{bin}/glc", "--help"
  end
end
