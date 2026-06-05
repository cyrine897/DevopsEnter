FROM golang:1.22-alpine AS builder

WORKDIR /app

COPY . .
RUN go build -o app

FROM alpine:latest

COPY --from=builder /app/app .
Expose 8080

CMD ["/app"]
