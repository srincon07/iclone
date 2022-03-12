"""User app configuration."""

from django.apps import AppConfig


class UsersConfig(AppConfig):
    """User app congig."""
    default_auto_field = 'django.db.models.BigAutoField'
    name = 'users'
    verbose_name = 'Users'
