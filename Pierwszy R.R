library(devtools)
library(httr)
library(jsonlite)

#endpoint<-"https://api.openweathermap.org/data/2.5/weather?q=Lublin&units=metric&appid=ccd2c7f8b414cadf0c4383ce0a541dc2"

#getWeather<- GET(endpoint)

#weatherText<- content(getWeather,"text")

#View(weatherText)

#weatherJson<-fromJSON(weatherText,flatten=TRUE)
#weatherDF <- as.data.frame(weatherJson)

#View(weatherDF)

#print(weatherDF)

library(httr)

github_api <- function(path) {
 url <- modify_url("https://api.github.com", path=path)
 GET(url)
}

resp <- github_api("/repos/krzyde/NewRProject")
#good to good dsadsa
