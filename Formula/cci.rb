class Cci < Formula
  desc "Claude Code 대화 복기용 TUI (Claude Code Inspector)"
  homepage "https://github.com/soomtong/claude-code-history-viewer"
  version "0.7.1"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/soomtong/claude-code-history-viewer/releases/download/v0.7.1/cci_0.7.1_darwin_arm64.tar.gz"
      sha256 "c8cc30acfb51f4d760955e2dc86ece05f148e1f467d2b582951ecc056589d394"
    end
    on_intel do
      url "https://github.com/soomtong/claude-code-history-viewer/releases/download/v0.7.1/cci_0.7.1_darwin_amd64.tar.gz"
      sha256 "deb479bca9b8f5e699243c2648d69242086f8a030edd14471358a21720d5efd0"
    end
  end

  def install
    bin.install "cci"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cci --version")
  end
end
