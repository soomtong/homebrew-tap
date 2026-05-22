class Glc < Formula
  desc "Git history file viewer - TUI for exploring files from git history"
  homepage "https://github.com/soomtong/gluck"
  url "https://github.com/soomtong/gluck/releases/download/v0.5.0/glc-arm64-darwin.tar.gz"
  version "0.5.0"
  sha256 "e0135ee9e18d5799ff6d84ab5a5db8abe21d5fc9ca190f13bdb2f5c94e37506d"
  license "MIT"

  def install
    bin.install "glc"
  end

  test do
    system "#{bin}/glc", "--help"
  end
end
