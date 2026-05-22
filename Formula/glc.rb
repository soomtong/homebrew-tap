class Glc < Formula
  desc "Git history file viewer - TUI for exploring files from git history"
  homepage "https://github.com/soomtong/gluck"
  url "https://github.com/soomtong/gluck/releases/download/v0.5.2/glc-arm64-darwin.tar.gz"
  version "0.5.2"
  sha256 "681607416025d9e4dc121747673dde8e249bcecb3ef2852569f7d728b0f62ce1"
  license "MIT"

  def install
    bin.install "glc"
  end

  test do
    system "#{bin}/glc", "--help"
  end
end
