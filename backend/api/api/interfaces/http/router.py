from http import HTTPStatus

from fastapi import APIRouter, HTTPException

from api.interfaces.http.dto import Health, Location, Locations

router = APIRouter()


@router.get("/health", response_model=Health)
async def health() -> Health:
    return Health(health="ok")


@router.post("/location/center", response_model=Location)
async def calculate_center_location(loc: Locations) -> Location:
    if not loc.locations:
        raise HTTPException(
            status_code=HTTPStatus.BAD_REQUEST, detail="need at least one location"
        )
    return Location(
        lat=sum(map(lambda l: l.lat, loc.locations)) / len(loc.locations),
        lon=sum(map(lambda l: l.lon, loc.locations)) / len(loc.locations),
    )
