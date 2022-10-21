from pydantic import BaseModel


class Health(BaseModel):
    health: str


class Location(BaseModel):
    lat: float
    lng: float


class Viewport(BaseModel):
    northeast: Location
    southwest: Location


class Geometry(BaseModel):
    location: Location
    viewport: Viewport


class OpeningHours(BaseModel):
    open_now: bool


class Photo(BaseModel):
    height: int
    html_attributions: list[str]
    photo_reference: str
    width: int


class PlusCode(BaseModel):
    compound_code: str
    global_code: str


class GoogleMapNearbySearchResponse(BaseModel):
    adr_address: str | None
    business_status: str | None
    geometry: Geometry | None
    icon: str | None
    icon_background_color: str | None
    icon_mask_base_uri: str | None
    name: str | None
    opening_hours: OpeningHours | None
    photos: list[Photo] | None
    place_id: str | None
    plus_code: PlusCode | None
    rating: float | None
    reference: str | None
    scope: str | None
    types: list[str] | None
    user_ratings_total: int | None
    vicinity: str | None
