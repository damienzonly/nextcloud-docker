# Nextcloud with docker compose

## Setup

1. Generate certificates and copy them in the `nginx` directory with the following names:
    ```bash
    cp cert.pem nginx/fullchain.pem
    cp key.pem nginx/key.pem
    ```
1. Create the required env files in the root of the repository
    ```
    # nextcloud.env
    POSTGRES_DB=nextcloud
    POSTGRES_HOST=postgres
    POSTGRES_USER=<user>
    POSTGRES_PASSWORD=<password>
    NEXTCLOUD_ADMIN_USER=<user>
    NEXTCLOUD_ADMIN_PASSWORD=<password>
    REDIS_HOST=redis
    OVERWRITEPROTOCOL=https

    # postgres.env
    POSTGRES_USER=<user>
    POSTGRES_PASSWORD=<password>
    POSTGRES_DB=nextcloud
    ```
1. Run
    ```bash
    docker-compose up -d
    ```