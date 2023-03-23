#!/bin/bash

docker build --tag rust-build ./rust-build/
docker build --tag rust-final ./rust-final/
docker build --tag rust-final-db ./rust-final-db/