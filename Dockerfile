FROM golang:1.17
RUN mkdir /app
ADD . /app/
WORKDIR /app
RUN CGO_ENABLED=0 GOOS=linux go build -o main .
EXPOSE 8080
CMD ["/app/main"]
