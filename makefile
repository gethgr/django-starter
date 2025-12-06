format:
	poetry run black .
	poetry run isort .

lint:
	poetry run flake8 .

pytest:
	poetry run pytest || true

show:
	poetry run python manage.py showmigrations

run:
	poetry run python manage.py runserver

migrate:
	poetry run python manage.py migrate

coverage:
	poetry run pytest --cov=core tests/

typecheck:
	poetry run mypy .

shell:
	poetry run python manage.py shell

check: format lint pytest


help:
	@echo "Available commands:"
	@echo "  make format       		- Run black and isort"
	@echo "  make lint         		- Run flake8"
	@echo "  make pytest         	- Run pytest"
	@echo "  make rundev	   		- Runserver"
	@echo "  make showmigrations	- Show migrations"
	@echo "  make makemigrations	- Make migrations"
	@echo "  make migrate      		- Apply migrations"
	@echo "  make createsuperuser	- Create super user"
	@echo "  make typecheck    		- Run mypy type checks"
	@echo "  make shell       		- Open Django shell"
	@echo "	 make docker-exec-db	- Connect through psql to db"
