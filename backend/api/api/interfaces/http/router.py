
from http import HTTPStatus

from fastapi import APIRouter, HTTPException
from fastapi.responses import JSONResponse

from api.interfaces.http.dto import Health, Location, Locations

from gensim.models import KeyedVectors

router = APIRouter()
model = KeyedVectors.load_word2vec_format('./jawiki.word_vectors.100d.txt')

@router.get("/health")
async def health():
    return {"health": "ok"}

@router.get("/recommend/keywords", status_code=200)
async def recommend_keywords(search_word: str):
    try:
        candidate_words = model.most_similar(search_word)
        return {"candidate_words": candidate_words}
    except:
        return JSONResponse(
            status_code=HTTPStatus.INTERNAL_SERVER_ERROR, 
            content={"candidate_words": []}
        ) 

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
