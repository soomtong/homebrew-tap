# Generated via `bun run distribute:brew`
class Tsl < Formula
  desc "Translate CLI powered by Effect/AI"
  homepage "https://github.com/soomtong/tsl"
  url "https://github.com/soomtong/tsl/releases/download/v0.6.2/tsl-macos.tar.gz"
  version "0.6.2"
  sha256 "d5ab9cc2ecdc902fa62a73897e0756532c14415e3d8e02365f6c569cdae95c1a"
  license "MIT"

  def install
    bin.install "tsl"
  end

  test do
    system "#{bin}/tsl", "--help"
  end
end
