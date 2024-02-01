# my-postgres-temporal-tables

This repository contains a Dockerfile for building a PostgreSQL image with the `temporal_tables` extension installed. The image is based on `postgres:16`.

## Building the Docker Image

To build the Docker image, run the following command in the root directory of this repository:

```bash
docker build -t my-postgres-temporal-tables .
```

This will create a Docker image named `my-postgres-temporal-tables`.

## Running the Docker Image

To run the Docker image, use the following command:

```bash
docker run --name some-postgres -e POSTGRES_PASSWORD=mysecretpassword -d my-postgres-temporal-tables
```

Replace `mysecretpassword` with the password you want to use for the PostgreSQL `postgres` user.

## GitHub Actions

This repository uses GitHub Actions to automatically build the Docker image and push it to the GitHub Container Registry. The workflow is triggered on every push to the repository and is also scheduled to run on a weekly basis.

The GitHub Actions workflow is defined in the `.github/workflows/docker-build.yml` file.