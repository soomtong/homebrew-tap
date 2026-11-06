class Glc < Formula
  desc "Git history file viewer - TUI for exploring files from git history"
  homepage "https://github.com/soomtong/gluck"
  url "https://github.com/soomtong/gluck/releases/download/v0.19.3/glc-0.19.3-darwin-aarch64.tar.gz"
  version "0.19.3"
  sha256 "a6b555118d826072f260f6b43b1981ae44f04bfbaee7918de9b0b0439866b31c"
  license "MIT"

  def install
    bin.install "glc"
  end

  test do
    system "#{bin}/glc", "--help"
  end
end
