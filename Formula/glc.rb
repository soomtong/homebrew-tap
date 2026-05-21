class Glc < Formula
  desc "Git history file viewer - TUI for exploring files from git history"
  homepage "https://github.com/soomtong/gluck"
  url "https://github.com/soomtong/gluck/releases/download/v0.1.1/glc-arm64-darwin.tar.gz"
  version "0.1.1"
  sha256 "9f24cf3577c609b43972b9048f0743e47532f61e6958a5c7febb5f3f51ebb691"
  license "MIT"

  def install
    bin.install "glc"
  end

  test do
    system "#{bin}/glc", "--help"
  end
end
