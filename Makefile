up:
	@docker compose up --build
	
up-d:
	@docker compose up --build -d

down:
	@docker compose down

dump:
	docker exec mongodb sh -c 'exec mongodump -d <database_name> --archive' > data/all-collections.archive