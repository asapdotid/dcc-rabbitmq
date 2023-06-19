# Docker Compose RabbitMQ

RabbitMQ is an open source general-purpose message broker that is designed for consistent, highly-available messaging scenarios (both synchronous and asynchronous).

-   Docker image base `bitnami/rabbitmq` [link](https://hub.docker.com/r/bitnami/rabbitmq)
-   Combine with Traefik custom setup: [asapdotid/traefik](https://github.com/asapdotid/dcc-traefik)

## Make sure docker network exist:

```bash
docker network create proxy
docker network create secure
```

## Makefile commands for run the code

```bash
make help
```

First of all:

-   Init setup env: `make init`
-   Init docker compose env: `make compose-init`

## Proxy environment variables

You could custom environment of setup proxy with Traefik on `.make/.env`:

```bash
# Development
DOCKER_PROJECT_PROXY=true
```

Or

```bash
# Production
DOCKER_PROJECT_PROXY=false
```

📖 Docker compose RabbitMQ config of `Bitnami RabbitMQ` [link](https://hub.docker.com/r/bitnami/rabbitmq)

## Troubleshoot Persisting data mount to container

Now chown this directory to `1001:root` since the image is using UID `1001` as the user running the command:

```bash
sudo chown -R 1001:root .data/data
```

## License

MIT / BSD

## Author Information

This Code was created in 2023 by [Asapdotid](https://github.com/asapdotid).
