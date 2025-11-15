# Generated via `bun run distribute:brew`
class Tsl < Formula
  desc "Translate CLI powered by Effect/AI"
  homepage "https://github.com/soomtong/tsl"
  url "https://github.com/soomtong/tsl/releases/download/v0.2.1/tsl-macos.tar.gz"
  version "0.2.1"
  sha256 "0dd74ed26228c7c101ab728106b3c37d5851d648abccbc7389aabaf48f93b5c6"
  license "MIT"

  def install
    bin.install "tsl"
  end

  test do
    system "#{bin}/tsl", "--help"
  end
end
