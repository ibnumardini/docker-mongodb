CONTAINER_NAME=mongodb
NOW := $(shell date +'%Y-%m-%d_%H-%M-%S')

up:
	@docker compose up --build
	
up-d:
	@docker compose up --build -d

down:
	@docker compose down

dump:
	@docker exec -i $(CONTAINER_NAME) /usr/bin/mongodump -u $(USER) -p $(PASS) --authenticationDatabase admin -d $(DB_NAME) --out /data/archive/$(DB_NAME)_$(NOW)_dump/

restore:
	@docker exec -i $(CONTAINER_NAME) /usr/bin/mongorestore -u $(USER) -p $(PASS) --authenticationDatabase admin --nsInclude="$(DB_NAME).*" /data/archive/$(DB_DUMP_NAME)/