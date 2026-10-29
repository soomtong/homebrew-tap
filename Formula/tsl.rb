# Generated via `bun run distribute:brew`
class Tsl < Formula
  desc "Translate CLI powered by Effect/AI"
  homepage "https://github.com/soomtong/tsl"
  url "https://github.com/soomtong/tsl/releases/download/v0.6.3/tsl-macos.tar.gz"
  version "0.6.3"
  sha256 "906df32e3efbc09c1ef6b3da1104d6ea3d6ba849e034d8850822ca2e73be0cbb"
  license "MIT"

  def install
    bin.install "tsl"
  end

  test do
    system "#{bin}/tsl", "--help"
  end
end
