class Cci < Formula
  desc "Claude Code 대화 복기용 TUI (Claude Code Inspector)"
  homepage "https://github.com/soomtong/claude-code-history-viewer"
  version "0.1.2"

  on_arm do
    url "https://github.com/soomtong/claude-code-history-viewer/releases/download/v0.1.2/cci_0.1.2_darwin_arm64.tar.gz"
    sha256 "daa7be5711a56f07ecd15d16d89349361e0258222744c34aa417f5d94d7a099f"
  end
  on_intel do
    url "https://github.com/soomtong/claude-code-history-viewer/releases/download/v0.1.2/cci_0.1.2_darwin_amd64.tar.gz"
    sha256 "579569c9c6383540d3b8bcc4e30107f605baeae0915d54c04e0106b4bfedb07c"
  end

  def install
    bin.install "cci"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cci --version")
  end
end
