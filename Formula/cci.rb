class Cci < Formula
  desc "Claude Code 대화 복기용 TUI (Claude Code Inspector)"
  homepage "https://github.com/soomtong/claude-code-history-viewer"
  version "0.2.0"

  on_arm do
    url "https://github.com/soomtong/claude-code-history-viewer/releases/download/v0.2.0/cci_0.2.0_darwin_arm64.tar.gz"
    sha256 "2c66ec2c0000342e9bc39b6d1d77a69d9e10475b8db6c59edf2a3e0910a5bc09"
  end
  on_intel do
    url "https://github.com/soomtong/claude-code-history-viewer/releases/download/v0.2.0/cci_0.2.0_darwin_amd64.tar.gz"
    sha256 "7728fb3b49e405f277ee9e9f4231262bc0793320ab69f9bbbf12a28cfb685219"
  end

  def install
    bin.install "cci"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cci --version")
  end
end
