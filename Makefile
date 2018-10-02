build-docker:
	docker build -t n0stack/build-proto .
build-proto:
	docker run -it --rm  -v $(PWD):/src:ro -v `go env GOPATH`/src:/dst n0stack/build-proto --go_out=plugins=grpc:/dst
