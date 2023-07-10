FROM alpine:3.18.2 as release

RUN apk update
RUN apk upgrade
RUN apk add --no-cache ca-certificates
RUN apk add --no-cache curl
RUN apk add --no-cache openssl
RUN apk add --no-cache libc6-compat
RUN apk add --no-cache libssl1.1
RUN apk add --no-cache gcompat
# RUN apk add --no-cache gcc
RUN apk add --no-cache libgcc