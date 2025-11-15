# Generated via `bun run distribute:brew`
class Tsl < Formula
  desc "Translate CLI powered by Effect/AI"
  homepage "https://github.com/soomtong/tsl"
  url "https://github.com/soomtong/tsl/releases/download/v0.1.1/tsl-macos.tar.gz"
  version "0.1.1"
  sha256 "dc2682b1e82061c0a784f438ca5d9031a13954b3ee9acf5c88485c4f38255d28"
  license "MIT"

  def install
    bin.install "tsl"
  end

  test do
    system "#{bin}/tsl", "--help"
  end
end
