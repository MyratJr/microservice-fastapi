from mylib.logic import wiki, search_wiki, phrase
from fastapi import FastAPI
import uvicorn


app = FastAPI(title="FastAAPI Wiki project")


@app.get("/")
async def root():
    return {"message": "Wikipedia API. Call /search or /wiki"}


@app.get("/search/{value}")
async def search_wiki_api(value: str):
    """Page to search in wikipedia"""

    result = search_wiki(value)
    return {"result": result}


@app.get("/search/{name}")
async def result_wiki_api(name: str):
    """Retrieve wikipedia page"""

    result = wiki(name)
    return {"result": result}


@app.get("/get-phrases/{name}")
async def get_phrases_api(name: str):
    """Retrieve wikipedia page"""

    result = phrase(name)
    return {"result": result}


if __name__ == "__main__":
    uvicorn.run(app, port=8000, host="0.0.0.0")
