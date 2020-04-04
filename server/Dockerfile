FROM golang:latest

ENV GO111MODULE=on

WORKDIR /go/src/github.com/kousuke1201abe/grpc-app/server
COPY . .
RUN go get -u github.com/pilu/fresh
CMD ["fresh"]
EXPOSE 9090
