# Generated via `bun run distribute:brew`
class Tsl < Formula
  desc "Translate CLI powered by Effect/AI"
  homepage "https://github.com/soomtong/tsl"
  url "https://github.com/soomtong/tsl/releases/download/v0.1.0/tsl-macos.tar.gz"
  version "0.1.0"
  sha256 "27723d8e2acdff9d23ca4d48d1d61530b5de88a75e090247403ad7b149200bf6"
  license "MIT"

  def install
    bin.install "tsl"
  end

  test do
    system "#{bin}/tsl", "--help"
  end
end
