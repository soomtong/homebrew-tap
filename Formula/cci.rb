class Cci < Formula
  desc "Claude Code 대화 복기용 TUI (Claude Code Inspector)"
  homepage "https://github.com/soomtong/claude-code-history-viewer"
  version "0.5.1"

  on_arm do
    url "https://github.com/soomtong/claude-code-history-viewer/releases/download/v0.5.1/cci_0.5.1_darwin_arm64.tar.gz"
    sha256 "0e426be68010ab4e92a92e0ce990d5cae7f9e53c36519de641b93746fcdb688e"
  end
  on_intel do
    url "https://github.com/soomtong/claude-code-history-viewer/releases/download/v0.5.1/cci_0.5.1_darwin_amd64.tar.gz"
    sha256 "19bb0937f199b7ba904fcc142f6ceaee097f299b562e4c763e1e0ec52c53b7b7"
  end

  def install
    bin.install "cci"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cci --version")
  end
end
