#!/bin/bash

dirs=`find -type d | grep -v .git | grep -v test`

for d in $dirs
do
  protoc -I/usr/local/include -I. -I/go/src -I/go/src/github.com/grpc-ecosystem/grpc-gateway/third_party/googleapis $* $d/*.proto
done