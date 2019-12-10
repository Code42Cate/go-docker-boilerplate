FROM golang:latest
LABEL maintainer="Jonas Scholz <info@jonas-scholz.me>"
# edit!^
WORKDIR /app
COPY go.mod go.sum ./
RUN go mod download
COPY . .
RUN go build -o main
ENTRYPOINT [ "./main"]  