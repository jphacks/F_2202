#!/usr/bin/env python
from fastapi import FastAPI
import uvicorn

from api.interfaces.http.router import router

app = FastAPI()
app.include_router(router, prefix="/api/v1")

if __name__ == "__main__":
    uvicorn.run(
        app="api.__main__:app",
        host="0.0.0.0",
        port=8080,
        reload=True,
        workers=1,
    )
