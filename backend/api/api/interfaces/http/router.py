import os
from http import HTTPStatus

import requests
from fastapi import APIRouter
from fastapi.responses import JSONResponse
from gensim.models import KeyedVectors

from api.interfaces.http.dto import GoogleMapNearbySearchResponse, Health

router = APIRouter()

model = KeyedVectors.load_word2vec_format("./jawiki.word_vectors.100d.txt")


@router.get("/health", response_model=Health)
async def health() -> Health:
    return Health(health="ok")


@router.get("/recommend/keywords", status_code=200)
async def recommend_keywords(search_word: str):
    try:
        candidate_words = model.most_similar(search_word)
        return {"candidate_words": candidate_words}
    except Exception:
        return JSONResponse(
            status_code=HTTPStatus.INTERNAL_SERVER_ERROR,
            content={"candidate_words": []},
        )


@router.get("/location/nearby")
async def fetch_nearby_location_from_keyword(
    lat: float, lon: float, keywords: str, radius: int = 500, count: int = 10
):
    nearby_location_endpoint = (
        "https://maps.googleapis.com/maps/api/place/nearbysearch/json"
    )
    place_endpoint = "https://maps.googleapis.com/maps/api/place/details/json"
    api_key = os.getenv("GOOGLE_MAP_API_KEY")
    urls = [
        f"{nearby_location_endpoint}?key={api_key}&location={lat}%2C{lon}&radius={radius}&language=ja&keyword={key}"
        for key in keywords.split(",")
    ]
    locations: list[GoogleMapNearbySearchResponse] = [
        GoogleMapNearbySearchResponse(**requests.get(url).json()["results"])
        for url in urls
    ]  # 並列化したい
    locations.sort(key=lambda location: location.rating, reverse=True)
    locations = locations if len(locations) < count else locations[:count]
    return [
        requests.get(f"{place_endpoint}?key={api_key}&place_id={loc.place_id}").json()[
            "result"
        ]
        for loc in locations
    ]  # 並列化したい
