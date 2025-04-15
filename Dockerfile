FROM golang:1.23.2 as build
WORKDIR /app
COPY . .
RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o cloudrun

FROM alpine:latest
RUN apk --no-cache add ca-certificates
WORKDIR /app
COPY --from=build /app/cloudrun .
ENV PORT=8080
EXPOSE 8080
ENTRYPOINT ["./cloudrun"]