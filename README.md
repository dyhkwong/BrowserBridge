- Generate `index.js`

  ```shell
  go install golang.org/dl/go1.19.13@v0.0.0-20240403152604-14e4fcb94860 # gopherjs v1.19.0-beta1 needs go 1.19.13
  go1.19.13 download
  go install github.com/gopherjs/gopherjs@v1.19.0-beta1
  export GOPHERJS_GOROOT="$(go1.19.13 env GOROOT)"
  cd bridge/bridgejs
  gopherjs build . # generate bridgejs.js and bridgejs.js.map, append -m to minify
  ```

- Use in `v2ray-core`

  - `go mod edit -replace` `github.com/v2fly/BrowserBridge` with this module.

  - replace stock `release/extra/browserforwarder/index.js` with the generated `bridgejs.js`.

  - replace the SHA256 hash of `browserforwarder/index.js` in `common/platform/securedload/embedded.go` with the SHA256 hash of the generated `bridgejs.js`.

  - replace any of `index.js` with the generated `bridgejs.js`.