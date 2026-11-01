class Cci < Formula
  desc "Claude Code 대화 복기용 TUI (Claude Code Inspector)"
  homepage "https://github.com/soomtong/claude-code-history-viewer"
  version "0.6.0"

  on_arm do
    url "https://github.com/soomtong/claude-code-history-viewer/releases/download/v0.6.0/cci_0.6.0_darwin_arm64.tar.gz"
    sha256 "106dbd2c5284baa3257b1f5ea829fa192ca528461111fcad4fb05e9253d4651a"
  end
  on_intel do
    url "https://github.com/soomtong/claude-code-history-viewer/releases/download/v0.6.0/cci_0.6.0_darwin_amd64.tar.gz"
    sha256 "58855460ae53d6713dc2af6af0fd785cb914e4836e19ca944ffa8f55a1015c53"
  end

  def install
    bin.install "cci"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cci --version")
  end
end
