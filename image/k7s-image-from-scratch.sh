#!/bin/bash

( cd .. ; CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -a -ldflags '-s')
cp ../kelefstis .
docker build . -t k7s

