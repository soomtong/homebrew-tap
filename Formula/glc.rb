class Glc < Formula
  desc "Git history file viewer - TUI for exploring files from git history"
  homepage "https://github.com/soomtong/gluck"
  url "https://github.com/soomtong/gluck/releases/download/v0.5.5/glc-0.5.5-darwin-aarch64.tar.gz"
  version "0.5.5"
  sha256 "82f904d4413964c815d753eb8ac4e89573a6e7c98799dc6e420622481457ea48"
  license "MIT"

  def install
    bin.install "glc"
  end

  test do
    system "#{bin}/glc", "--help"
  end
end
