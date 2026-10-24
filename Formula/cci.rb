class Cci < Formula
  desc "Claude Code 대화 복기용 TUI (Claude Code Inspector)"
  homepage "https://github.com/soomtong/claude-code-history-viewer"
  version "0.3.1"

  on_arm do
    url "https://github.com/soomtong/claude-code-history-viewer/releases/download/v0.3.1/cci_0.3.1_darwin_arm64.tar.gz"
    sha256 "0269ecd5a72646614b8cb48e6e35055a8fb87689b09bc55b7cadfa5b4b13f036"
  end
  on_intel do
    url "https://github.com/soomtong/claude-code-history-viewer/releases/download/v0.3.1/cci_0.3.1_darwin_amd64.tar.gz"
    sha256 "1ea71446fd544b7723037013d9eb5aaca10ae72adbe434f46e79a23eb510812b"
  end

  def install
    bin.install "cci"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cci --version")
  end
end
