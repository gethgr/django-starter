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

### Requirements
- Python **3.12.x**
- [Poetry](https://python-poetry.org/)
- (Recommended) [pyenv](https://github.com/pyenv/pyenv)

---

### 1. Clone το repo
```bash
git clone https://github.com/gethgr/django-starter.git myproject
```
```bash
cd myproject
```

### 2. Python setup

This project requires Python 3.12.x, includes a .python-version file with 3.12.0 version set.

- Option A: Set Python version (using pyenv, Recommended)

If you use pyenv, make sure the required Python version is installed.
Verify Python version, if installed continue to step 3:

```bash
python --version
```

Otherwise install it using:

```bash
pyenv install 3.12.0
```

- Option B: Without pyenv

Make sure you have Python 3.12.x installed on your system.
Verify Python version

```bash
python --version
```
If multiple Python versions are installed, tell Poetry which one to use:

```bash
poetry env use python3.12
```

### 3. Create and activate virtual enviroment using Poetry
```bash
poetry install
```

### 3. Enviroment development variables

```bash
cp .env.example .env.dev (or your preferred name)
```
-**Edit** .env and set your project specific values:
- SECRET_KEY -> set you own secret key
- DEBUG -> True for development
- ALLOWED_HOSTS -> e.g. 127.0.0.1
- DATABASE_URL -> optional, if using PostgreSQL, othewise SQLite is used by default for development

This starter template requires PostgreSQL for production. Make sure you have PostgreSQL installed and running.

### 4. Optional: Rename project
- The main project folder is core
- You can rename it if desired
- All tools (mypy, black, isort, flake8) will still work if core/ remains the root app