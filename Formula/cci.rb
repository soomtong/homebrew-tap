class Cci < Formula
  desc "Claude Code 대화 복기용 TUI (Claude Code Inspector)"
  homepage "https://github.com/soomtong/claude-code-history-viewer"
  version "0.5.0"

  on_arm do
    url "https://github.com/soomtong/claude-code-history-viewer/releases/download/v0.5.0/cci_0.5.0_darwin_arm64.tar.gz"
    sha256 "38bb56b1bd567f67cca74e209c2bfaef24680c0c9958c4b4d9daea9adfb2d991"
  end
  on_intel do
    url "https://github.com/soomtong/claude-code-history-viewer/releases/download/v0.5.0/cci_0.5.0_darwin_amd64.tar.gz"
    sha256 "0ef2f89a30615a25e47316249c43d73c628a795fa21bb23534a2431d1795720e"
  end

  def install
    bin.install "cci"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cci --version")
  end
end
