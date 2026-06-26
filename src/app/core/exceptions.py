"""Excepciones de dominio compartidas."""

from __future__ import annotations


class AppError(Exception):
    """Error base de la aplicacion."""

    def __init__(self, message: str, status_code: int = 500) -> None:
        super().__init__(message)
        self.message = message
        self.status_code = status_code


class NotFoundError(AppError):
    def __init__(self, message: str = "Recurso no encontrado") -> None:
        super().__init__(message, status_code=404)


class UnauthorizedError(AppError):
    def __init__(self, message: str = "No autorizado") -> None:
        super().__init__(message, status_code=401)


class ForbiddenError(AppError):
    def __init__(self, message: str = "Prohibido") -> None:
        super().__init__(message, status_code=403)


class ConflictError(AppError):
    def __init__(self, message: str = "Conflicto de estado") -> None:
        super().__init__(message, status_code=409)
