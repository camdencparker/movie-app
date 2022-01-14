require "http"

respons = HTTP.get("http://localhost:3000/movies")

pp response.parse(:json)