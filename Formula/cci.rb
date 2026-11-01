class Cci < Formula
  desc "Claude Code 대화 복기용 TUI (Claude Code Inspector)"
  homepage "https://github.com/soomtong/claude-code-history-viewer"
  version "0.5.2"

  on_arm do
    url "https://github.com/soomtong/claude-code-history-viewer/releases/download/v0.5.2/cci_0.5.2_darwin_arm64.tar.gz"
    sha256 "f1de5a6fba16f4d4c264fc396e70bc95202ab12cb74a22382e8d87bfe67add73"
  end
  on_intel do
    url "https://github.com/soomtong/claude-code-history-viewer/releases/download/v0.5.2/cci_0.5.2_darwin_amd64.tar.gz"
    sha256 "12b7b22437f85ee3b852bb2b9f73960aa458507a283e15d9935052b54be5efd6"
  end

  def install
    bin.install "cci"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cci --version")
  end
end
