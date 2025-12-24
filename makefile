format:
	poetry run black .
	poetry run isort .

lint:
	poetry run flake8 .

tests:
	poetry run pytest || true

rundev:
	poetry run python manage.py runserver 8001 --settings=core.settings.dev

showmigrations:
	poetry run python manage.py showmigrations --settings=core.settings.dev

makemigrations:
	poetry run python manage.py makemigrations --settings=core.settings.dev

migrate:
	poetry run python manage.py migrate --settings=core.settings.dev

createsuperuser:
	poetry run python manage.py createsuperuser --settings=core.settings.dev

typecheck:
	poetry run mypy .

shell:
	poetry run python manage.py shell

check: format lint tests

docker-dev:
	docker compose -f docker/dev/docker-compose.yml up --build -d

docker-exec-db:
	docker exec -it django_dev_db psql -U myuser -d mydatabase


help:
	@echo "Available commands:"
	@echo "  make format       		- Run black and isort"
	@echo "  make lint         		- Run flake8"
	@echo "  make test         		- Run pytest"
	@echo "  make rundev	   		- Runserver"
	@echo "  make showmigrations	- Show migrations"
	@echo "  make makemigrations	- Make migrations"
	@echo "  make migrate      		- Apply migrations"
	@echo "  make createsuperuser	- Create super user"
	@echo "  make typecheck    		- Run mypy type checks"
	@echo "  make shell       		- Open Django shell"
	@echo "	 make docker-exec-db	- Connect through psql to db"