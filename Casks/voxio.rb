# Bumped via `make release` in soomtong/Voxio (private repository)
cask "voxio" do
  version "1.1.0"
  sha256 "ece5109e622fb761c7196825c9b7efbe24e11f5f1ad0f9d6158dffd60a783286"

  # The source repository is private, so the browser download URL returns 404.
  # Fetch the release asset through the REST API with a token that can read it.
  url "https://api.github.com/repos/soomtong/Voxio/releases/assets/655384014",
      header: [
        "Accept: application/octet-stream",
        "Authorization: Bearer #{ENV.fetch("HOMEBREW_GITHUB_API_TOKEN", "")}",
        "X-GitHub-Api-Version: 2022-11-28",
      ]
  name "Voxio"
  desc "Menu bar dictation: double-tap right Command to type speech at the cursor"
  homepage "https://github.com/soomtong/Voxio"

  livecheck do
    skip "Private repository"
  end

  depends_on macos: :sonoma

  app "Voxio-#{version}/Voxio.app"

  # Signed with the self-signed "Voxio Dev" certificate, not notarized.
  # Gatekeeper rejects it while the quarantine attribute is attached.
  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/Voxio.app"]
  end

  uninstall quit: "com.soomtong.voxio"

  # The Groq API key lives in the login Keychain item "Voxio"; remove it by hand.
  zap trash: [
    "~/Library/Application Support/Voxio",
    "~/Library/Preferences/com.soomtong.voxio.plist",
  ]

  caveats <<~EOS
    Allow Voxio in System Settings > Privacy & Security > Accessibility,
    then double-tap the right Command key once to grant microphone access.
    Upgrades keep both permissions as long as the app is signed with "Voxio Dev".
  EOS
end
