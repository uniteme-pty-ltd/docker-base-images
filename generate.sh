#!/bin/bash

docker build --tag rust-build ./rust-build/ #--platform linux/arm64
docker build --tag rust-final ./rust-final/ #--platform linux/arm64
docker build --tag rust-final-db ./rust-final-db/ #--platform linux/arm64