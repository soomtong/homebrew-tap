class Cci < Formula
  desc "Claude Code 대화 복기용 TUI (Claude Code Inspector)"
  homepage "https://github.com/soomtong/claude-code-history-viewer"
  version "0.7.2"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/soomtong/claude-code-history-viewer/releases/download/v0.7.2/cci_0.7.2_darwin_arm64.tar.gz"
      sha256 "230a1f06210f9989c43de6c594932a41807cba90e594e1d978b567e58a979806"
    end
    on_intel do
      url "https://github.com/soomtong/claude-code-history-viewer/releases/download/v0.7.2/cci_0.7.2_darwin_amd64.tar.gz"
      sha256 "fd3276514513acc841629b1515901d7827ca09b7f43b23355e065588aabd2b84"
    end
  end

  def install
    bin.install "cci"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cci --version")
  end
end
