class Cci < Formula
  desc "Claude Code 대화 복기용 TUI (Claude Code Inspector)"
  homepage "https://github.com/soomtong/claude-code-history-viewer"
  version "0.6.1"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/soomtong/claude-code-history-viewer/releases/download/v0.6.1/cci_0.6.1_darwin_arm64.tar.gz"
      sha256 "3df5c71058cefac1c7c7f25e9485098ae2e86365970a3452179e19c8dd155d13"
    end
    on_intel do
      url "https://github.com/soomtong/claude-code-history-viewer/releases/download/v0.6.1/cci_0.6.1_darwin_amd64.tar.gz"
      sha256 "8ec16a6004aa5c123870385bf6960a649764156a27a7b9a9fa4cbf9db4923576"
    end
  end

  def install
    bin.install "cci"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cci --version")
  end
end
