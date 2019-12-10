FROM golang:latest

LABEL maintainer="Jonas Scholz <info@jonas-scholz.me>"
WORKDIR /app
COPY go.mod go.sum ./
RUN go mod download
COPY . .
RUN go build -o main
EXPOSE 8080
ENTRYPOINT [ "./main"]