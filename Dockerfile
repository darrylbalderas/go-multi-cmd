
FROM golang:1.22-alpine AS builder
ARG CMD_NAME
WORKDIR /app
COPY go.mod ./
RUN go mod download
COPY cmd/ cmd/
RUN go build -o ${CMD_NAME} ./cmd/${CMD_NAME}/main.go


FROM alpine:latest
ARG CMD_NAME
WORKDIR /app
COPY --from=builder /app/${CMD_NAME} ./main
CMD ["./main"]