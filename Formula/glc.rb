class Glc < Formula
  desc "Git history file viewer - TUI for exploring files from git history"
  homepage "https://github.com/soomtong/gluck"
  url "https://github.com/soomtong/gluck/releases/download/v0.5.9/glc-0.5.9-darwin-aarch64.tar.gz"
  version "0.5.9"
  sha256 "27099b5c756875ca50f26e8850754e50fe5e2656d8ebb035df8d8c2aeaa4bb57"
  license "MIT"

  def install
    bin.install "glc"
  end

  test do
    system "#{bin}/glc", "--help"
  end
end
