REVISION=$(shell git rev-parse --verify --short HEAD)
UID=$(shell id -u)
GID=$(shell id -g)
DOCKER_COMPOSE_CMD=env UID=${UID} GID=${GID} docker-compose

build:
	$(DOCKER_COMPOSE_CMD) build

run:
	$(DOCKER_COMPOSE_CMD) up -d

stop:
	$(DOCKER_COMPOSE_CMD) stop

implode:
	$(DOCKER_COMPOSE_CMD) rm

logs:
	$(DOCKER_COMPOSE_CMD) logs -f

version:
	@echo ${REVISION}
