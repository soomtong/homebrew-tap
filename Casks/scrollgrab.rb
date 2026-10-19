# Bumped via `make release` in soomtong/ScrollGrab (private repository)
cask "scrollgrab" do
  version "1.1.0"
  sha256 "5eea3783a029877776e529132f0d697a9401a25d1e7aec65808db5d82d5f194c"

  # The source repository is private, so the browser download URL returns 404.
  # Fetch the release asset through the REST API with a token that can read it.
  url "https://api.github.com/repos/soomtong/ScrollGrab/releases/assets/655504910",
      header: [
        "Accept: application/octet-stream",
        "Authorization: Bearer #{ENV.fetch("HOMEBREW_GITHUB_API_TOKEN", "")}",
        "X-GitHub-Api-Version: 2022-11-28",
      ]
  name "ScrollGrab"
  desc "Menu bar utility for right-drag grab scrolling and mouse-only wheel reversal"
  homepage "https://github.com/soomtong/ScrollGrab"

  livecheck do
    skip "Private repository"
  end

  depends_on macos: :sonoma

  app "ScrollGrab-#{version}/ScrollGrab.app"

  # Signed with the self-signed "ScrollGrab Dev" certificate, not notarized.
  # Gatekeeper rejects it while the quarantine attribute is attached.
  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/ScrollGrab.app"]
  end

  uninstall quit: "com.soomtong.scrollgrab"

  zap trash: [
    "~/Library/Logs/ScrollGrab",
    "~/Library/Preferences/com.soomtong.scrollgrab.plist",
  ]

  caveats <<~EOS
    Allow ScrollGrab in System Settings > Privacy & Security > Accessibility.
    Upgrades keep the permission as long as the app is signed with "ScrollGrab Dev".
  EOS
end
