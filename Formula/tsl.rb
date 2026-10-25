# Generated via `bun run distribute:brew`
class Tsl < Formula
  desc "Translate CLI powered by Effect/AI"
  homepage "https://github.com/soomtong/tsl"
  url "https://github.com/soomtong/tsl/releases/download/v0.6.0/tsl-macos.tar.gz"
  version "0.6.0"
  sha256 "810924d0f6ab75bd0d1505f7537ce8b8ffa23dce47a63eeda7eb4e11a3cf5ca4"
  license "MIT"

  def install
    bin.install "tsl"
  end

  test do
    system "#{bin}/tsl", "--help"
  end
end
