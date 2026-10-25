class Cci < Formula
  desc "Claude Code 대화 복기용 TUI (Claude Code Inspector)"
  homepage "https://github.com/soomtong/claude-code-history-viewer"
  version "0.3.2"

  on_arm do
    url "https://github.com/soomtong/claude-code-history-viewer/releases/download/v0.3.2/cci_0.3.2_darwin_arm64.tar.gz"
    sha256 "3534ad0942d46b4ad521d818e5b374f22455dbfd43e6e587dc3c8962062ecff8"
  end
  on_intel do
    url "https://github.com/soomtong/claude-code-history-viewer/releases/download/v0.3.2/cci_0.3.2_darwin_amd64.tar.gz"
    sha256 "df4d9ed6a62cf614fa15802302312a3e8d343feb50eb41162593276caa2e742b"
  end

  def install
    bin.install "cci"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cci --version")
  end
end
