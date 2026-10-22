cask "kornflake" do
  version "0.4.0"

  on_arm do
    sha256 "6a6b19a0e9804ec9a752b392fe25b0fe1e875f1f6adabf3fa94c88b54e2077ab"
    url "https://github.com/soomtong/kornflake/releases/download/v0.4.0/Kornflake-0.4.0-arm64.dmg"
  end
  on_intel do
    sha256 "380c8fd6ab955ffb9b82b1514e87cdddaefdb202818acd92a29be534ef3b0502"
    url "https://github.com/soomtong/kornflake/releases/download/v0.4.0/Kornflake-0.4.0-x86_64.dmg"
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
