DOCKER_COMPOSE_FILE = docker-compose.yaml

.PHONY: up down restart logs scylla-target

up:
	docker-compose -f $(DOCKER_COMPOSE_FILE) up -d

down:
	docker-compose -f $(DOCKER_COMPOSE_FILE) down

restart: down up

logs:
	docker-compose -f $(DOCKER_COMPOSE_FILE) logs -f

# Target to run specific command
scylla-target:
	docker-compose -f $(DOCKER_COMPOSE_FILE) $(filter-out $@,$(MAKECMDGOALS))

%:
	@:
