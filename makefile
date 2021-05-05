.DEFAULT_GOAL := build

PGADMIN_EMAIL?=
POSTGRES_PASSWORD?=

ifneq (,$(wildcard ./.env))
	include .env
	export 
endif





build:
	@if [ -z "$(POSTGRES_PASSWORD)" ]; then echo "environment veriable POSTGRES_PASSWORD, not set"; exit 1  teg; fi
	@docker-compose -f docker-compose.yml build

run:
	@docker-compose -f docker-compose.yml up -d

run-live:
	@docker-compose -f docker-compose.yml up

stop:
	@docker-compose -f docker-compose.yml down

build-debug:
	@if [ -z "$(POSTGRES_PASSWORD)" ]; then echo "environment veriable POSTGRES_PASSWORD, not set"; exit 1  teg; fi
	@if [ -z "$(PGADMIN_EMAIL)" ]; then echo "environment veriable PGADMIN_EMAIL, not set"; exit 1  teg; fi
	@if [ -z "$(PGADMIN_PASSWORD)" ]; then echo "environment veriable PGADMIN_PASSWORD, not set"; exit 1  teg; fi
	@docker-compose -f docker-compose.yml -f docker-compose.dev.yml  build

run-debug:
	@docker-compose -f docker-compose.yml -f docker-compose.dev.yml up -d

run-debug-live:
	@docker-compose -f docker-compose.yml -f docker-compose.dev.yml up


stop-debug:
	@docker-compose -f docker-compose.yml -f docker-compose.dev.yml stop