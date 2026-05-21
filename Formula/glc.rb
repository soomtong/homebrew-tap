class Glc < Formula
  desc "Git history file viewer - TUI for exploring files from git history"
  homepage "https://github.com/soomtong/gluck"
  url "https://github.com/soomtong/gluck/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "68d9bbe7cbc1168cb706e648f28082dbe36b36a9a4362e8e292cd6f6ddb2b68f"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/glc", "--help"
  end
end
