from pydantic_settings import BaseSettings, SettingsConfigDict


class SecretConfig(BaseSettings):
    config: dict = SettingsConfigDict(env_file=".env", env_file_encoding="utf-8")  # type: ignore

    client_id: str
    client_secret: str
    redirect_uri: str
    environment: str


SETTINGS = SecretConfig()  # type: ignore
