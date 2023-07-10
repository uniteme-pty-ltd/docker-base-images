# To be used as the base image during the build stage of a rust app
# FROM rust:1.67.1-buster
FROM rust:1.70.0-alpine3.18

# Install common dependencies
# RUN apt-get update
# RUN apt-get -y upgrade
# RUN apt-get -y install libpq-dev
# RUN apt-get -y install pkg-config
# RUN apt-get -y install libssl-dev
RUN apk update
RUN apk upgrade
RUN apk add --no-cache ca-certificates
RUN apk add --no-cache libpq-dev
RUN apk add --no-cache curl
RUN apk add --no-cache openssl
RUN apk add --no-cache libc6-compat
RUN apk add --no-cache libssl1.1
RUN apk add --no-cache gcc
RUN apk add --no-cache gcompat
RUN apk add --no-cache musl-dev

ENV RUSTFLAGS="-C target-feature=-crt-static"

# Cache crates.io index
RUN cargo new /index-cache
WORKDIR /index-cache
RUN cargo add serde