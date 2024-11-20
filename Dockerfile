FROM golang:1.12.17

COPY . /app
WORKDIR /app

RUN go build

EXPOSE 9646
USER 1000

ENTRYPOINT ["/app/locust_exporter"]
