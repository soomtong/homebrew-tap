class Glc < Formula
  desc "Git history file viewer - TUI for exploring files from git history"
  homepage "https://github.com/soomtong/gluck"
  url "https://github.com/soomtong/gluck/releases/download/v0.5.12/glc-0.5.12-darwin-aarch64.tar.gz"
  version "0.5.12"
  sha256 "638ea6b76b267322a046bae490fc988c469c136a46f507789c900fcc1c4d525f"
  license "MIT"

  def install
    bin.install "glc"
  end

  test do
    system "#{bin}/glc", "--help"
  end
end
