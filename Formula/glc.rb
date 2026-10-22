class Glc < Formula
  desc "Git history file viewer - TUI for exploring files from git history"
  homepage "https://github.com/soomtong/gluck"
  url "https://github.com/soomtong/gluck/releases/download/v0.17.0/glc-0.17.0-darwin-aarch64.tar.gz"
  version "0.17.0"
  sha256 "43c0f2e5b842a479d045b788406b1e852169437f914f8c6ae93a346df0d21508"
  license "MIT"

  def install
    bin.install "glc"
  end

  test do
    system "#{bin}/glc", "--help"
  end
end
