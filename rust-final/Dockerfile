# To be used as the base image during the final stage of a rust app
FROM rust-build as build

FROM rust:1-slim-bullseye as release

RUN apt update
RUN apt install -y curl