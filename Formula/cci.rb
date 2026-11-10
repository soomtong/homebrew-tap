class Cci < Formula
  desc "Claude Code 대화 복기용 TUI (Claude Code Inspector)"
  homepage "https://github.com/soomtong/claude-code-history-viewer"
  version "0.7.0"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/soomtong/claude-code-history-viewer/releases/download/v0.7.0/cci_0.7.0_darwin_arm64.tar.gz"
      sha256 "2181dfcb4ad341b7a87d22d804a6e027d9388ef5c80ac3ac8aea299fd0bb676b"
    end
    on_intel do
      url "https://github.com/soomtong/claude-code-history-viewer/releases/download/v0.7.0/cci_0.7.0_darwin_amd64.tar.gz"
      sha256 "28518ea7d2956e8c1e259687c936cb8062678bbcf6efec0e60dfc3d3f3dcc403"
    end
  end

  def install
    bin.install "cci"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cci --version")
  end
end
