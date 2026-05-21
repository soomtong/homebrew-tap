class Glc < Formula
  desc "Git history file viewer - TUI for exploring files from git history"
  homepage "https://github.com/soomtong/gluck"
  url "https://github.com/soomtong/gluck/releases/download/v0.1.0/glc-macos.tar.gz"
  version "0.1.0"
  sha256 "483f4cabf5adc8c12db01cea2e1c13035e24ae00ccbfaba4cfa5bce0fcefb6d0"
  license "MIT"

  def install
    bin.install "glc"
  end

  test do
    system "#{bin}/glc", "--help"
  end
end
