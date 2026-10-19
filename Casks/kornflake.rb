cask "kornflake" do
  version "0.3.1"

  on_arm do
    sha256 "4561e8c582b4e18ab60fae2ab249313a27923615529cedf9e87f309bbd86526e"
    url "https://github.com/soomtong/kornflake/releases/download/v0.3.1/Kornflake-0.3.1-arm64.dmg"
  end
  on_intel do
    sha256 "cc5f87841afb51f2aab888596bcea802ebc017e7780833a8693e3a2db0f6148f"
    url "https://github.com/soomtong/kornflake/releases/download/v0.3.1/Kornflake-0.3.1-x86_64.dmg"
  end

  name "Kornflake"
  desc "Preview Yamaha Motif ES Kontakt samples without Kontakt Player"
  homepage "https://github.com/soomtong/kornflake"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Kornflake.app"

  zap trash: [
    "~/Library/Caches/Kornflake",
    "~/Library/Preferences/com.kornflake.preview.plist",
  ]

  caveats <<~EOS
    Kornflake is ad-hoc signed and not notarized, so Gatekeeper blocks the first launch.
    Allow it in System Settings → Privacy & Security → "Open Anyway", or run:
      xattr -dr com.apple.quarantine "#{appdir}/Kornflake.app"
  EOS
end
