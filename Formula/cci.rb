class Cci < Formula
  desc "Claude Code 대화 복기용 TUI (Claude Code Inspector)"
  homepage "https://github.com/soomtong/claude-code-history-viewer"
  version "0.4.0"

  on_arm do
    url "https://github.com/soomtong/claude-code-history-viewer/releases/download/v0.4.0/cci_0.4.0_darwin_arm64.tar.gz"
    sha256 "5be1a09ad1f5d1ac4e8e07fbdb1c128988944f94e9ca98546f97605913a72efb"
  end
  on_intel do
    url "https://github.com/soomtong/claude-code-history-viewer/releases/download/v0.4.0/cci_0.4.0_darwin_amd64.tar.gz"
    sha256 "96e75dd9e198595b994bc0093e163f1fcb919e6fa717a634f8811386f0abab36"
  end

  def install
    bin.install "cci"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cci --version")
  end
end
