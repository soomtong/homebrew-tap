class Cci < Formula
  desc "Claude Code 대화 복기용 TUI (Claude Code Inspector)"
  homepage "https://github.com/soomtong/claude-code-history-viewer"
  version "0.3.0"

  on_arm do
    url "https://github.com/soomtong/claude-code-history-viewer/releases/download/v0.3.0/cci_0.3.0_darwin_arm64.tar.gz"
    sha256 "2cd0a43fe45386e5f2db86e4e5188604e8af36231a587c00cc951df0ba0a9703"
  end
  on_intel do
    url "https://github.com/soomtong/claude-code-history-viewer/releases/download/v0.3.0/cci_0.3.0_darwin_amd64.tar.gz"
    sha256 "6228ca56b7dfa63b2df5fb088f5a22ec7527cd5bfaf905658f7ba7a1acbafa23"
  end

  def install
    bin.install "cci"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cci --version")
  end
end
