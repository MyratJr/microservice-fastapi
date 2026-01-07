import wikipedia
from textblob import TextBlob


def wiki(name="Cristiano Ronaldo", length=1):
    """This is a wikipedia fetcher"""
    my_wiki = wikipedia.summary(name, length)
    return my_wiki


def search_wiki(name):
    """This is a wikipedia search"""
    my_wiki = wikipedia.search(name)
    return my_wiki


def phrase(name):
    """Returns phrases from wikipedia"""
    try:
        wiki_result = wiki(name)
    except Exception:
        return {"result": 404}
    blob = TextBlob(wiki_result)
    return blob.noun_phrases
