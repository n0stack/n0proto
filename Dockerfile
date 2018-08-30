FROM grpc/go

LABEL maintainer="h-otter@outlook.jp"

# `go get` returns error code with "is not using a known version control system",
# so make to return OK always for work around
RUN go get -u github.com/grpc-ecosystem/grpc-gateway/protoc-gen-grpc-gateway \
 || go get -u github.com/grpc-ecosystem/grpc-gateway/protoc-gen-swagger \
 || go get -u github.com/golang/protobuf/protoc-gen-go \
 || echo

WORKDIR /src
COPY entry_point.sh /

ENTRYPOINT [ "/entry_point.sh" ]
