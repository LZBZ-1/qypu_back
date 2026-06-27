from app.core.exceptions import DomainError

INVALID_CHANNEL_TYPE = "INVALID_CHANNEL_TYPE"
CHANNEL_LINKING_CODE_CONFLICT = "CHANNEL_LINKING_CODE_CONFLICT"
CHANNEL_INVALID_LINKING_CODE = "CHANNEL_INVALID_LINKING_CODE"
CHANNEL_ALREADY_LINKED = "CHANNEL_ALREADY_LINKED"
CHANNEL_ORGANIZATION_NOT_FOUND = "CHANNEL_ORGANIZATION_NOT_FOUND"
CHANNEL_ORGANIZATION_ACCESS_DENIED = "CHANNEL_ORGANIZATION_ACCESS_DENIED"
CHANNEL_PERSISTENCE_ERROR = "CHANNEL_PERSISTENCE_ERROR"


class InvalidChannelTypeError(DomainError):
    def __init__(self) -> None:
        super().__init__(
            code=INVALID_CHANNEL_TYPE,
            message="channel_type must be telegram",
            status_code=400,
        )


class ChannelLinkingCodeConflictError(DomainError):
    def __init__(self) -> None:
        super().__init__(
            code=CHANNEL_LINKING_CODE_CONFLICT,
            message="channel linking_code already exists",
            status_code=409,
        )


class ChannelInvalidLinkingCodeError(DomainError):
    def __init__(self) -> None:
        super().__init__(
            code=CHANNEL_INVALID_LINKING_CODE,
            message="channel linking_code is invalid",
            status_code=404,
        )


class ChannelAlreadyLinkedError(DomainError):
    def __init__(self) -> None:
        super().__init__(
            code=CHANNEL_ALREADY_LINKED,
            message="channel linking_code is already linked",
            status_code=409,
        )


class ChannelOrganizationNotFoundError(DomainError):
    def __init__(self) -> None:
        super().__init__(
            code=CHANNEL_ORGANIZATION_NOT_FOUND,
            message="channel organization does not exist",
            status_code=409,
        )


class ChannelOrganizationAccessDeniedError(DomainError):
    def __init__(self) -> None:
        super().__init__(
            code=CHANNEL_ORGANIZATION_ACCESS_DENIED,
            message="user does not have active access to this organization",
            status_code=403,
        )


class ChannelPersistenceError(DomainError):
    def __init__(self) -> None:
        super().__init__(
            code=CHANNEL_PERSISTENCE_ERROR,
            message="channel could not be created",
            status_code=500,
        )
