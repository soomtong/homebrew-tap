class Glc < Formula
  desc "Git history file viewer - TUI for exploring files from git history"
  homepage "https://github.com/soomtong/gluck"
  url "https://github.com/soomtong/gluck/releases/download/v0.5.3/glc-arm64-darwin.tar.gz"
  version "0.5.3"
  sha256 "ecb7065156fc483bdc42f65e938f4210bbb34537d005ae5593fc6f0afe59eb2c"
  license "MIT"

  def install
    bin.install "glc"
  end

  test do
    system "#{bin}/glc", "--help"
  end
end
