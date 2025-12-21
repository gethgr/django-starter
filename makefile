format:
	poetry run black .
	poetry run isort .

lint:
	poetry run flake8 .

tests:
	poetry run pytest || true

show:
	poetry run python manage.py showmigrations

run:
	poetry run python manage.py runserver

rundev:
	poetry run python manage.py runserver --settings=core.settings.dev

migrate:
	poetry run python manage.py migrate

coverage:
	poetry run pytest --cov=core tests/

typecheck:
	poetry run mypy .

shell:
	poetry run python manage.py shell


check: format lint tests


help:
	@echo "Available commands:"
	@echo "  make format       - Run black and isort"
	@echo "  make lint         - Run flake8"
	@echo "  make test         - Run pytest"
	@echo "  make show		   - Show migrations"
	@echo "  make run          - Run Django server"
	@echo "  make migrate      - Apply migrations"
	@echo "  make coverage     - Run tests with coverage"
	@echo "  make typecheck    - Run mypy type checks"
	@echo "  make shell        - Open Django shell"