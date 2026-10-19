# soomtong-homebrew-tap

```sh
brew tap soomtong/tap
brew trust soomtong/tap
```

| 이름 | 종류 | 소스 |
|---|---|---|
| `tsl` | Formula | 공개 |
| `glc` | Formula | 공개 |
| `voxio` | Cask | 비공개 (개인용) |
| `scrollgrab` | Cask | 비공개 (개인용) |

## 비공개 Cask (voxio, scrollgrab)

소스 저장소가 비공개라 Release 의 일반 다운로드 링크는 404 입니다. 그래서 cask 는
릴리스 에셋 API(`api.github.com/.../releases/assets/<id>`)를 가리키고, 내려받을 때
`HOMEBREW_GITHUB_API_TOKEN` 을 `Authorization` 헤더로 붙입니다. Homebrew 는 cask 를
평가할 때 민감한 환경 변수를 지우지만 이 변수만은 남겨 두므로 다른 이름은 쓸 수 없습니다.

### 맥마다 한 번

1. 토큰 발급 — GitHub Settings → Developer settings → Fine-grained tokens
   - Repository access: Only select repositories → `Voxio`, `ScrollGrab`
   - Permissions: Contents → Read-only (Metadata 는 자동으로 붙음)
2. 토큰을 Keychain 에 넣고 셸에서 읽게 합니다. dotfiles 에 평문으로 두지 않기 위해서입니다.

   ```sh
   security add-generic-password -a "$USER" -s homebrew-github-api-token -w 'github_pat_...'
   ```

   `~/.zprofile`:

   ```sh
   export HOMEBREW_GITHUB_API_TOKEN="$(security find-generic-password -s homebrew-github-api-token -w 2>/dev/null)"
   ```

3. 설치

   ```sh
   brew install --cask soomtong/tap/voxio soomtong/tap/scrollgrab
   ```

   `make install` 로 이미 `/Applications` 에 깔린 맥이라면 처음 한 번만 `--force` 를 붙입니다.
   같은 self-signed 인증서로 서명된 앱이라 접근성·마이크 권한은 그대로 유지됩니다.

### 갱신

```sh
brew update && brew upgrade --cask voxio scrollgrab
```

새 버전은 각 소스 저장소에서 `make pack dist release` 로 올립니다. `release` 가 zip 을
GitHub Release 에 올린 뒤 이 저장소의 cask(version, sha256, 에셋 URL)를 고쳐 push 합니다.

### 참고

- 다운로드가 404 면 토큰이 없거나 만료됐거나 저장소 권한이 빠진 것입니다.
- 토큰은 Homebrew 전역 설정이기도 해서 `brew search` 등의 API 호출에도 쓰입니다. 권한을 위처럼
  좁혀 두면 그 용도로도 문제없습니다. `--verbose` / `--debug` 출력에서는 Homebrew 가 값을 가립니다.
- 두 앱은 Developer ID 공증을 받지 않았습니다. cask 의 `postflight_steps` 가 quarantine
  속성을 떼어 Gatekeeper 에 막히지 않게 합니다.
