DOCKER_COMPOSE=docker compose -f docker-compose.yml

build-dev:
	$(DOCKER_COMPOSE) build

stop:
	$(DOCKER_COMPOSE) down -v

run:
	$(DOCKER_COMPOSE) up

shell:
	$(DOCKER_COMPOSE) run --rm capture sh

.PHONY: build stop run shell
