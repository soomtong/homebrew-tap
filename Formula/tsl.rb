# Generated via `bun run distribute:brew`
class Tsl < Formula
  desc "Translate CLI powered by Effect/AI"
  homepage "https://github.com/soomtong/tsl"
  url "https://github.com/soomtong/tsl/releases/download/v0.2.0/tsl-macos.tar.gz"
  version "0.2.0"
  sha256 "5eec12ff2ffb1a562fa4fc8708f12ab8e52c31be06d4a1715f28b4a738a9b21d"
  license "MIT"

  def install
    bin.install "tsl"
  end

  test do
    system "#{bin}/tsl", "--help"
  end
end
