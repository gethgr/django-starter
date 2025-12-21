# flake8: noqa
from .base import *

# Production specific settings
DEBUG = False

# define specifi domains for production
ALLOWED_HOSTS = env.list('ALLOWED_HOSTS', default=[])

# Database from DATABASE_URL
DATABASES = {'default': env.db('DATABASE_URL')}

# Security best practices for production
CSRF_COOKIE_SECURE = True
SESSION_COOKIE_SECURE = True
SECURE_BROWSER_XSS_FILTER = True
SECURE_CONTENT_TYPE_NOSNIFF = True
SECURE_HSTS_SECONDS = 3600
SECURE_HSTS_INCLUDE_SUBDOMAINS = True
SECURE_HSTS_PRELOAD = True
SECURE_SSL_REDIRECT = True
