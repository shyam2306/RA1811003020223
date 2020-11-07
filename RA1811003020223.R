library(robotstxt)
path<-paths_allowed("https://en.wikipedia.org/wiki/List_of_countries_and_dependencies_by_population")
link<-"https://en.wikipedia.org/wiki/List_of_countries_and_dependencies_by_population"
#Read this website
library(rvest)
web<-read_html(link)
populationrate<-web%>%html_nodes("td:nth-child(4) , tr:nth-child(1) span")%>%html_text()
View(populationrate)


