FROM grpc/go

LABEL maintainer="h-otter@outlook.jp"

RUN go get -u github.com/grpc-ecosystem/grpc-gateway/protoc-gen-grpc-gateway \
 && go get -u github.com/grpc-ecosystem/grpc-gateway/protoc-gen-swagger \
 && go get -u github.com/golang/protobuf/protoc-gen-go

WORKDIR /src
COPY entry_point.sh /

ENTRYPOINT [ "/entry_point.sh" ]
