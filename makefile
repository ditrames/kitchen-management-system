.DEFAULT_GOAL := build

PGADMIN_EMAIL?=
POSTGRES_PASSWORD?=

ifneq (,$(wildcard ./.env))
	include .env
	export 
endif

build:
	@if [ -z "$(POSTGRES_PASSWORD)" ]; then echo "environment veriable POSTGRES_PASSWORD, not set"; exit 1  teg; fi
	@docker-compose -f docker-compose.yml -f docker-compose.db.yml build
	@docker-compose  -f docker-compose.init.yml -f docker-compose.db.yml build
	@docker-compose  -f docker-compose.init.yml -f docker-compose.db.yml up --abort-on-container-exit
	

run:
	@docker-compose -f docker-compose.yml -f docker-compose.db.yml up -d

run-live:
	@docker-compose -f docker-compose.yml -f docker-compose.db.yml up

stop:
	@docker-compose -f docker-compose.yml -f docker-compose.db.yml down

build-debug:
	@if [ -z "$(POSTGRES_PASSWORD)" ]; then echo "environment veriable POSTGRES_PASSWORD, not set"; exit 1  teg; fi
	@if [ -z "$(PGADMIN_EMAIL)" ]; then echo "environment veriable PGADMIN_EMAIL, not set"; exit 1  teg; fi
	@if [ -z "$(PGADMIN_PASSWORD)" ]; then echo "environment veriable PGADMIN_PASSWORD, not set"; exit 1  teg; fi
	@if [ -z "$(GID)" ]; then echo "environment veriable GID, not set"; exit 1  teg; fi
	@if [ -z "$(UID)" ]; then echo "environment veriable UID, not set"; exit 1  teg; fi
	@mkdir -p ./application/database/pgadmin_data
	@sudo chown 5050:5050 ./application/database/pgadmin_data
	@docker-compose -f docker-compose.yml -f docker-compose.db.yml -f docker-compose.dev.yml  build

run-debug:
	@docker-compose -f docker-compose.yml -f docker-compose.db.yml -f docker-compose.dev.yml up -d

run-debug-live:
	@docker-compose -f docker-compose.yml -f docker-compose.db.yml -f docker-compose.dev.yml up


stop-debug:
	@docker-compose -f docker-compose.yml -f docker-compose.db.yml -f docker-compose.dev.yml stop