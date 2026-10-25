class Cci < Formula
  desc "Claude Code 대화 복기용 TUI (Claude Code Inspector)"
  homepage "https://github.com/soomtong/claude-code-history-viewer"
  version "0.3.6"

  on_arm do
    url "https://github.com/soomtong/claude-code-history-viewer/releases/download/v0.3.6/cci_0.3.6_darwin_arm64.tar.gz"
    sha256 "68352e51e29ee374290e33985afb196b769cb14d8bf6e7b6cef3a40902d64b20"
  end
  on_intel do
    url "https://github.com/soomtong/claude-code-history-viewer/releases/download/v0.3.6/cci_0.3.6_darwin_amd64.tar.gz"
    sha256 "01877860f0ae2966036b7f48e8c9b97d4bce5551707c44445eeb1ba35fba31ae"
  end

  def install
    bin.install "cci"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cci --version")
  end
end
