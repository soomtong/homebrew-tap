# Generated via `bun run distribute:brew`
class Tsl < Formula
  desc "Translate CLI powered by Effect/AI"
  homepage "https://github.com/soomtong/tsl"
  url "https://github.com/soomtong/tsl/releases/download/v0.5.0/tsl-macos.tar.gz"
  version "0.5.0"
  sha256 "5bc46087c58d08b8a7f0cc7e9ee7731699983b4d839c31c4462dcb1cd57d18d2"
  license "MIT"

  def install
    bin.install "tsl"
  end

  test do
    system "#{bin}/tsl", "--help"
  end
end
