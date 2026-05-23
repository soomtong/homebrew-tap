class Glc < Formula
  desc "Git history file viewer - TUI for exploring files from git history"
  homepage "https://github.com/soomtong/gluck"
  url "https://github.com/soomtong/gluck/releases/download/v0.5.5/glc-0.5.5-darwin-aarch64.tar.gz"
  version "0.5.5"
  sha256 "e61d953fb77b26a979c8e1060dd96d46de5b171c12a031bbe1dcae8654c20d25"
  license "MIT"

  def install
    bin.install "glc"
  end

  test do
    system "#{bin}/glc", "--help"
  end
end
