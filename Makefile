run: build
	@@./rkellyipsum -lines=10

build: bindata.go
	@@go build

bindata.go:
	go-bindata all-songs.txt
