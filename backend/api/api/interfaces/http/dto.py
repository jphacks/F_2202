from pydantic import BaseModel


class Health(BaseModel):
    health: str


class Location(BaseModel):
    lat: float
    lon: float


class Locations(BaseModel):
    locations: list[Location]
