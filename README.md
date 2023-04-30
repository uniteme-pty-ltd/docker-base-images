# docker-base-images

Base Docker images to prevent needless recompilation.

These images are built and uploaded to AWS ECR on every commit to `main` and when a new release is created.

When publishing the image to ECR, the image tag depends on the circumstances:

- All commits to `main` will use a the commit hash.
- ~~All new releases will use the release tag.~~ (Not yet implemented)

## Usage

Pull the Docker images from AWS ECR like so:

```bash
# rust-build
docker pull public.ecr.aws/a7w5m6n7/rust-build:latest

# rust-final
docker pull public.ecr.aws/a7w5m6n7/rust-final:latest

# rust-final-db
docker pull public.ecr.aws/a7w5m6n7/rust-final-db:latest
```

Or, use them in a `Dockerfile`:

```Dockerfile
# rust-build
FROM public.ecr.aws/a7w5m6n7/rust-build:latest

# rust-final
FROM public.ecr.aws/a7w5m6n7/rust-final:latest

# rust-final-db
FROM public.ecr.aws/a7w5m6n7/rust-final-db:latest
```

## Building locally

Run `generate.sh` to build each image and add them to your system.

```bash
./generate.sh
```

## Manually building and publishing

1. Retrieve an authentication token and authenticate your Docker client to the registry.

```bash
aws ecr-public get-login-password --region us-east-1 | docker login --username AWS --password-stdin public.ecr.aws/a7w5m6n7
```

2. Build the image you wish to publish. (Using rust-final as an example)

```bash
docker build -t rust-final .
```

3. After the build is completed, tag your image with `latest`.

```bash
docker tag rust-final:latest public.ecr.aws/a7w5m6n7/rust-final:latest
```

4. Push the image to the artifact registry.

```bash
docker push public.ecr.aws/a7w5m6n7/rust-final:latest
```
