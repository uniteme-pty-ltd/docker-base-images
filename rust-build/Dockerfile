# To be used as the base image during the build stage of a rust app
FROM rust:1.67.1-buster

# Install common dependencies
RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get -y install libpq-dev
RUN apt-get -y install pkg-config
RUN apt-get -y install libssl-dev

# Cache crates.io index
RUN cargo new /index-cache
WORKDIR /index-cache
RUN cargo add serde