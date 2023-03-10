#!/bin/bash
TEST_TARGET := e2e integration unit

.PHONY: build test module prisma

setup:
	@echo "\nā Installed dependencies\n"
	cp .env.example .env
	@bash scripts/create-env.sh
	@echo "\nā Created env file\n"
prisma:
	npm run prisma:generate
	@echo "ā Generated prisma types\n"
	npm run prisma:migrate
	@echo "ā Migrated db"
dev:
	@echo "š Starting to run app in dev mode"
	npm run dev
build:
	@echo "š Starting to build app\n"
	npm run build
	@echo "ā Build completed"
prod:
	@echo "š Starting to run app in production mode"
	npm run prod
test:
	@bash scripts/run-test.sh
module:
	@bash scripts/create-module.sh
env:
	@bash scripts/create-env.sh
	
