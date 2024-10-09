- Generate `index.js`

  ```shell
  go install golang.org/dl/go1.19.13@latest # gopherjs v1.19.0-beta1 needs go 1.19.13
  go1.19.13 download
  go1.19.13 install github.com/gopherjs/gopherjs@v1.19.0-beta1
  export GOPHERJS_GOROOT="$(go1.19.13 env GOROOT)"
  cd bridge/bridgejs
  gopherjs build . # generate bridgejs.js and bridgejs.js.map, or use `gopherjs build -m .` to generate minified ones
  ```

- Use in `v2ray-core`

  - `go mod edit -replace` `github.com/v2fly/BrowserBridge` with this module. (optional)

  - replace stock `release/extra/browserforwarder/index.js` with the generated `bridgejs.js`.

  - replace the SHA256 hash of `browserforwarder/index.js` in `common/platform/securedload/embedded.go` with the SHA256 hash of the generated `bridgejs.js`.

  - replace stock `index.js` in `v2ray-extra.zip` with the generated `bridgejs.js`.
