class Cci < Formula
  desc "Claude Code 대화 복기용 TUI (Claude Code Inspector)"
  homepage "https://github.com/soomtong/claude-code-history-viewer"
  version "0.1.1"

  on_arm do
    url "https://github.com/soomtong/claude-code-history-viewer/releases/download/v0.1.1/cci_0.1.1_darwin_arm64.tar.gz"
    sha256 "e306bec15108ef1a73babc6e55ea89958f83c0f12c3e249b519e447a2b7022f0"
  end
  on_intel do
    url "https://github.com/soomtong/claude-code-history-viewer/releases/download/v0.1.1/cci_0.1.1_darwin_amd64.tar.gz"
    sha256 "250c1fb752df58d2f975254e5ea5eae7d23b2bc718eb4abcad4b515e16bb56fb"
  end

  def install
    bin.install "cci"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cci --version")
  end
end
