class Glc < Formula
  desc "Git history file viewer - TUI for exploring files from git history"
  homepage "https://github.com/soomtong/gluck"
  url "https://github.com/soomtong/gluck/releases/download/v0.19.0/glc-0.19.0-darwin-aarch64.tar.gz"
  version "0.19.0"
  sha256 "475663efa0cb94e4d04a4a2851b5ee1bb0021d13b1b21752736795e77dc9a44c"
  license "MIT"

  def install
    bin.install "glc"
  end

  test do
    system "#{bin}/glc", "--help"
  end
end
