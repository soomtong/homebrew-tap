class Glc < Formula
  desc "Git history file viewer - TUI for exploring files from git history"
  homepage "https://github.com/soomtong/gluck"
  url "https://github.com/soomtong/gluck/releases/download/v0.2.0/glc-arm64-darwin.tar.gz"
  version "0.2.0"
  sha256 "7799ec6ec79273523bd510c532b049ee08150e23022955521a62c80e06e48f21"
  license "MIT"

  def install
    bin.install "glc"
  end

  test do
    system "#{bin}/glc", "--help"
  end
end
