from fastapi import APIRouter, status
from fastapi.responses import JSONResponse

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
            status_code=status.HTTP_500_INTERNAL_SERVER_ERROR, 
            content={"candidate_words": []}
        ) 
