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

stop:
	@docker-compose -f docker-compose.yml down

build-debug:
	@docker-compose -f docker-compose.yml -f docker-compose.dev.yml  build

run-debug:
	@docker-compose -f docker-compose.yml -f docker-compose.dev.yml up -d

stop-debug:
	@docker-compose -f docker-compose.yml -f docker-compose.dev.yml stop