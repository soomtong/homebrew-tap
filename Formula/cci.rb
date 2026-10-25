class Cci < Formula
  desc "Claude Code 대화 복기용 TUI (Claude Code Inspector)"
  homepage "https://github.com/soomtong/claude-code-history-viewer"
  version "0.3.5"

  on_arm do
    url "https://github.com/soomtong/claude-code-history-viewer/releases/download/v0.3.5/cci_0.3.5_darwin_arm64.tar.gz"
    sha256 "52a0c87a80b4082ed8714989992f7ab27adfc601d3c26d89f46afb7c6749d037"
  end
  on_intel do
    url "https://github.com/soomtong/claude-code-history-viewer/releases/download/v0.3.5/cci_0.3.5_darwin_amd64.tar.gz"
    sha256 "4c2e2afa660e932a99fcb30d0a14c5b4d6e5246e0117cbd1ff4a3bfe59dbf7ec"
  end

  def install
    bin.install "cci"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cci --version")
  end
end
