class Cci < Formula
  desc "Claude Code 대화 복기용 TUI (Claude Code Inspector)"
  homepage "https://github.com/soomtong/claude-code-history-viewer"
  version "0.1.3"

  on_arm do
    url "https://github.com/soomtong/claude-code-history-viewer/releases/download/v0.1.3/cci_0.1.3_darwin_arm64.tar.gz"
    sha256 "38d53906cacc5412bd8cfb2a04bf415ed10dfa3cde370755d419d02279f9aac1"
  end
  on_intel do
    url "https://github.com/soomtong/claude-code-history-viewer/releases/download/v0.1.3/cci_0.1.3_darwin_amd64.tar.gz"
    sha256 "3646a0aa69e9df3d6178f39f051b18c3e11cbfd2f5f0306e0a75d29ba53b674f"
  end

  def install
    bin.install "cci"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cci --version")
  end
end
