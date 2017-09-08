# Simple standard Dockerfile. Run anything we build in Alpine.
FROM golang:alpine

# We need git to pull packages from github
RUN apk add --no-cache git

WORKDIR /go/src/app
COPY . .

RUN go-wrapper download
RUN go-wrapper install

CMD ["go-wrapper", "run"]
