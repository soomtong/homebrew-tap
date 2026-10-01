class Glc < Formula
  desc "Git history file viewer - TUI for exploring files from git history"
  homepage "https://github.com/soomtong/gluck"
  url "https://github.com/soomtong/gluck/releases/download/v0.13.1/glc-0.13.1-darwin-aarch64.tar.gz"
  version "0.13.1"
  sha256 "514fdadb12701fbb5f08c321ac8e56347dab94277596f738c4e2b40e48a9f4a3"
  license "MIT"

  def install
    bin.install "glc"
  end

  test do
    system "#{bin}/glc", "--help"
  end
end
