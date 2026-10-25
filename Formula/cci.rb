class Cci < Formula
  desc "Claude Code 대화 복기용 TUI (Claude Code Inspector)"
  homepage "https://github.com/soomtong/claude-code-history-viewer"
  version "0.4.1"

  on_arm do
    url "https://github.com/soomtong/claude-code-history-viewer/releases/download/v0.4.1/cci_0.4.1_darwin_arm64.tar.gz"
    sha256 "0951e5b2611510a33f0c594428b77ccfa50f4eb44eedcfc42832783ca49e0a16"
  end
  on_intel do
    url "https://github.com/soomtong/claude-code-history-viewer/releases/download/v0.4.1/cci_0.4.1_darwin_amd64.tar.gz"
    sha256 "950e5c86e892c47cf5f301f43a7fb383bce755be117f660d635f4cab7bb1fa69"
  end

  def install
    bin.install "cci"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cci --version")
  end
end
