DOCKER_COMPOSE_FILE = docker-compose.yaml

.PHONY: up down logs mongodb-target

up:
	docker-compose -f $(DOCKER_COMPOSE_FILE) up -d

down:
	docker-compose -f $(DOCKER_COMPOSE_FILE) down

restart: down up

logs:
	docker-compose -f $(DOCKER_COMPOSE_FILE) logs -f

mongodb-target:
	docker-compose -f $(DOCKER_COMPOSE_FILE) $(filter-out $@,$(MAKECMDGOALS))

%:
	@:



