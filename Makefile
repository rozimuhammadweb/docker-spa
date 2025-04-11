-include .env
export

DC := docker-compose exec
PHP := $(DC) php
PHP_SU := $(DC) --user=root php
npm := $(DC) frontend npm
MYSQL := $(DC) -T mysql
CURRENT_UID := $(shell id -u)

ps:
	@docker-compose ps

build:
	@docker-compose up -d --build

start:
	@docker-compose up -d

stop:
	@docker-compose down

rebuild:
	@docker-compose up -d --build

remove-orphans:
	@docker-compose down --remove-orphans

restart: remove-orphans start

init:
	@docker-compose build --no-cache --build-arg USER_ID=$(CURRENT_UID)

frontend-ssh:
	$(DC) frontend sh

frontend-nginx-ssh:
	$(DC) frontend-nginx sh

npm-serve:
	@$(npm) run dev

npm-install:
	@$(npm) install

npm-build:
	@$(npm) run build

php-sh:
	@$(DC) php bash

permissions:
	@$(PHP_SU) chmod -R 777 storage

composer-install:
	@$(PHP) composer install

migrate:
	@$(PHP) php artisan migrate

seed:
	@$(PHP) php artisan db:seed

fix_permissions:
	@$(PHP_SU) chown www-data:www-data -R /home/www-data
	@$(PHP_SU) chown www-data:www-data -R .
	@$(PHP) find . -type d -exec chmod 755 {} \;
	@$(PHP) find . -type f -exec chmod 644 {} \;
	@$(PHP) find ./vendor/bin -type f -exec chmod 755 {} \;