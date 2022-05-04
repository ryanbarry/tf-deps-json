FROM golang:alpine AS builder

RUN go install github.com/hashicorp/hcl/v2/cmd/hcldec@v2.12.0

FROM alpine

COPY --from=builder /go/bin/hcldec /bin/hcldec
