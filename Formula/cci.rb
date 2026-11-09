class Cci < Formula
  desc "Claude Code 대화 복기용 TUI (Claude Code Inspector)"
  homepage "https://github.com/soomtong/claude-code-history-viewer"
  version "0.6.2"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/soomtong/claude-code-history-viewer/releases/download/v0.6.2/cci_0.6.2_darwin_arm64.tar.gz"
      sha256 "b3a89bd7cd2475932a0da7f9ea4288818026bdaba3a7c1758768a882d0c87d4b"
    end
    on_intel do
      url "https://github.com/soomtong/claude-code-history-viewer/releases/download/v0.6.2/cci_0.6.2_darwin_amd64.tar.gz"
      sha256 "5b8530367b7652fd5cb2d0a93b746023f54d6633e39233b6398faf45a6285da4"
    end
  end

  def install
    bin.install "cci"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cci --version")
  end
end
