class Glc < Formula
  desc "Git history file viewer - TUI for exploring files from git history"
  homepage "https://github.com/soomtong/gluck"
  url "https://github.com/soomtong/gluck/releases/download/v0.3.1/glc-arm64-darwin.tar.gz"
  version "0.3.1"
  sha256 "1e8c608f64c04bc1479cb8093e90cdabbc277a96707afb4199073c0e9e9767ae"
  license "MIT"

  def install
    bin.install "glc"
  end

  test do
    system "#{bin}/glc", "--help"
  end
end
