class Cci < Formula
  desc "Claude Code 대화 복기용 TUI (Claude Code Inspector)"
  homepage "https://github.com/soomtong/claude-code-history-viewer"
  version "0.3.3"

  on_arm do
    url "https://github.com/soomtong/claude-code-history-viewer/releases/download/v0.3.3/cci_0.3.3_darwin_arm64.tar.gz"
    sha256 "4163e663d63e7fa570480d49e9e11faf4cbe8ab38d7732c36836d8cf05f4dc94"
  end
  on_intel do
    url "https://github.com/soomtong/claude-code-history-viewer/releases/download/v0.3.3/cci_0.3.3_darwin_amd64.tar.gz"
    sha256 "27b80c575682d047bef4a8d8f7c9cb41ff46227b2e2cb1fcfd7ad65f294504b1"
  end

  def install
    bin.install "cci"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cci --version")
  end
end
