.PHONY: run mongodb-target scylla-target postgresql-target

postgresql-target:
	$(MAKE) -C database/postgresql $(MAKECMDGOALS)

mongodb-target:
	$(MAKE) -C database/mongodb $(MAKECMDGOALS)

scylla-target:
	$(MAKE) -C database/scylla $(MAKECMDGOALS)

run:
	docker compose up
