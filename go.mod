module github.com/v2fly/BrowserBridge

go 1.20

require (
	github.com/gopherjs/gopherjs v1.19.0-beta1
	github.com/gopherjs/websocket v0.0.0-20191103002815-9a42957e2b3a
	github.com/gorilla/websocket v1.5.1
	github.com/lunixbochs/struc v0.0.0-20200707160740-784aaebc1d40
	github.com/xtaci/smux v1.5.24
)

require golang.org/x/net v0.17.0 // indirect

replace github.com/gopherjs/websocket => ./vendor2/github.com/gopherjs/websocket/
