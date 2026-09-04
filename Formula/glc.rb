class Glc < Formula
  desc "Git history file viewer - TUI for exploring files from git history"
  homepage "https://github.com/soomtong/gluck"
  url "https://github.com/soomtong/gluck/releases/download/v0.13.0/glc-0.13.0-darwin-aarch64.tar.gz"
  version "0.13.0"
  sha256 "ebc6147d4d112a7bbd260c5caf19b4e23da9c43aef132bb4ed8b7a38192dc1df"
  license "MIT"

  def install
    bin.install "glc"
  end

  test do
    system "#{bin}/glc", "--help"
  end
end
