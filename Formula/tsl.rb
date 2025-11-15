# Generated via `bun run distribute:brew`
class Tsl < Formula
  desc "Translate CLI powered by Effect/AI"
  homepage "https://github.com/soomtong/tsl"
  url "https://github.com/soomtong/tsl/releases/download/v0.3.0/tsl-macos.tar.gz"
  version "0.3.0"
  sha256 "2fddae7258cb36fd0c4243cd7d8614cec2a0ca23023cb447f8142a270606a256"
  license "MIT"

  def install
    bin.install "tsl"
  end

  test do
    system "#{bin}/tsl", "--help"
  end
end
