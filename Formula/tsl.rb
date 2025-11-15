# Generated via `bun run distribute:brew`
class Tsl < Formula
  desc "Translate CLI powered by Effect/AI"
  homepage "https://github.com/soomtong/tsl"
  url "https://github.com/soomtong/tsl/releases/download/v0.1.0/tsl-macos.tar.gz"
  version "0.1.0"
  sha256 "f4e9a8a630f5efbd8460a691d4e3c4e38ddf07c447206984c1521b973343d45e"
  license "MIT"

  def install
    bin.install "tsl"
  end

  test do
    system "#{bin}/tsl", "--help"
  end
end
