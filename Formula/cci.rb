class Cci < Formula
  desc "Claude Code 대화 복기용 TUI (Claude Code Inspector)"
  homepage "https://github.com/soomtong/claude-code-history-viewer"
  version "0.3.4"

  on_arm do
    url "https://github.com/soomtong/claude-code-history-viewer/releases/download/v0.3.4/cci_0.3.4_darwin_arm64.tar.gz"
    sha256 "6521918650ebb306ac5ab8b5883334dd2727815359ecbf1c1c31cdba7fb9104e"
  end
  on_intel do
    url "https://github.com/soomtong/claude-code-history-viewer/releases/download/v0.3.4/cci_0.3.4_darwin_amd64.tar.gz"
    sha256 "bb2e114b07b085c69ecd38d88e3625909191133c0db04be4e6b9db636e8cecf2"
  end

  def install
    bin.install "cci"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cci --version")
  end
end
