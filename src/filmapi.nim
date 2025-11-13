import asyncdispatch, httpclient, json, strutils
const api = "https://filmapi.vercel.app/api"
var headers = newHttpHeaders({
    "Connection": "keep-alive",
    "user-agent": "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36",
    "Host": "filmapi.vercel.app",
    "accept": "application/json"
})

proc all_films*(): Future[JsonNode] {.async.} =
  let client = newAsyncHttpClient()
  client.headers = headers
  try:
    let response = await client.get(api & "/films")
    let body = await response.body
    result = parseJson(body)
  finally:
    client.close()

