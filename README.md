# django-starter
This is a django starter template for fast developing!


# Django Starter Template

This repository is a **minimal Django starter template** that includes all the basic tools and settings to start fast the developing of a new Django project.

Includes:

- Django project (`core/`) ready for user
- Support for environment variables with `django-environ`
- Development tools:
  - **Black** → formatting
  - **isort** → sort imports
  - **flake8** → linting
  - **pytest + pytest-django** → testing
  - **mypy** → optional type checking
  - **ipython** → debugging shell
- Makefile commands for:
  - format code (`make format`)
  - lint (`make lint`)
  - run tests (`make tests`)
  - type check (`make typecheck`)
  - showmigrations (`make show`)
  - run Django server (`make run`)
  - migrate (`make migrate`)
  - Django shell (`make shell`)
  
---

## Installation guide

### 1. Clone το repo
```bash
git clone https://github.com/gethgr/django-starter.git myproject
```
```bash
cd myproject
```

### 2. Create and activate virtual enviroment using Poetry
```bash
poetry install
```

```bash
poetry shell
```
### 3. Enviroment variables

```bash
cp .env.example .env
```
-**Edit** .env and set your project specific values:
- SECRET_KEY -> set you own secret key
- DEBUG -> True for development
- ALLOWED_HOSTS -> e.g. 127.0.0.1
- DATABASE_URL -> optional, if using PostgreSQL, othewise SQLite is used by default

### 4. Optional: Rename project
- The main project folder is core
- You can rename it if desired
- All tools (mypy, black, isort, flake8) will still work if core/ remains the root app