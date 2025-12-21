# flake8: noqa
from .base import *

# Development specific settings
DEBUG = True
ALLOWED_HOSTS = ["localhost", "127.0.0.1"]

# use postresql if DATABASE_URL is set, otherwise fall back to sqlite
DATABASES = {'default': env.db('DATABASE_URL', default=f"sqlite:///{BASE_DIR / 'db.sqlite3'}")}
