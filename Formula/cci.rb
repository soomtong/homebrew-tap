class Cci < Formula
  desc "Claude Code 대화 복기용 TUI (Claude Code Inspector)"
  homepage "https://github.com/soomtong/claude-code-history-viewer"
  version "0.4.2"

  on_arm do
    url "https://github.com/soomtong/claude-code-history-viewer/releases/download/v0.4.2/cci_0.4.2_darwin_arm64.tar.gz"
    sha256 "03d51b08af23a5e1399133a49f0ad669b857f107d0dd816235202590d7f4008f"
  end
  on_intel do
    url "https://github.com/soomtong/claude-code-history-viewer/releases/download/v0.4.2/cci_0.4.2_darwin_amd64.tar.gz"
    sha256 "6bab633fdd98cb2d4d429b4a27cb8f90b71cad60f7e49c51d739070bcf63fef6"
  end

  def install
    bin.install "cci"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cci --version")
  end
end
