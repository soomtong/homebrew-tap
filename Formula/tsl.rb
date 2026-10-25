# Generated via `bun run distribute:brew`
class Tsl < Formula
  desc "Translate CLI powered by Effect/AI"
  homepage "https://github.com/soomtong/tsl"
  url "https://github.com/soomtong/tsl/releases/download/v0.5.0/tsl-macos.tar.gz"
  version "0.5.0"
  sha256 "f9395350668e7b0daee88644186fce6329a1867eb22c539b9d05c2bdc1fd9b10"
  license "MIT"

  def install
    bin.install "tsl"
  end

  test do
    system "#{bin}/tsl", "--help"
  end
end
