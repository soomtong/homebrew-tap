class Glc < Formula
  desc "Git history file viewer - TUI for exploring files from git history"
  homepage "https://github.com/soomtong/gluck"
  url "https://github.com/soomtong/gluck/releases/download/v0.11.0/glc-0.11.0-darwin-aarch64.tar.gz"
  version "0.11.0"
  sha256 "74dee171f745a7e1842c342118e061610c3c3f55fc72099deee7f5abb1e3eb87"
  license "MIT"

  def install
    bin.install "glc"
  end

  test do
    system "#{bin}/glc", "--help"
  end
end
