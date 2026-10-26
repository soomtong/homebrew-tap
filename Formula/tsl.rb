# Generated via `bun run distribute:brew`
class Tsl < Formula
  desc "Translate CLI powered by Effect/AI"
  homepage "https://github.com/soomtong/tsl"
  url "https://github.com/soomtong/tsl/releases/download/v0.6.1/tsl-macos.tar.gz"
  version "0.6.1"
  sha256 "b7d86581329783c86fd47387a2feff7e287ed31edb9429c26294165617bac236"
  license "MIT"

  def install
    bin.install "tsl"
  end

  test do
    system "#{bin}/tsl", "--help"
  end
end
