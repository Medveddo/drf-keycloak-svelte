# Keycloak test-drive

## Get started with Keycloak on Docker

[Guide](https://www.keycloak.org/getting-started/getting-started-docker)

## Run

```shell
docker run -p 8080:8080 -e KEYCLOAK_ADMIN=admin -e KEYCLOAK_ADMIN_PASSWORD=admin quay.io/keycloak/keycloak:18.0.0 start-dev
```

```shell
docker-compose up
```

## Frontend

npm install keycloak-js --save

## Backend

[Django-keycloak](https://django-keycloak.readthedocs.io/en/latest/)
