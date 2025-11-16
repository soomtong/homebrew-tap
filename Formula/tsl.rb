# Generated via `bun run distribute:brew`
class Tsl < Formula
  desc "Translate CLI powered by Effect/AI"
  homepage "https://github.com/soomtong/tsl"
  url "https://github.com/soomtong/tsl/releases/download/v0.4.0/tsl-macos.tar.gz"
  version "0.4.0"
  sha256 "0b1972c38b7c68e7d3e02896bf888dbc23111eabc6769ba07f3f3e2e1f9181dd"
  license "MIT"

  def install
    bin.install "tsl"
  end

  test do
    system "#{bin}/tsl", "--help"
  end
end
