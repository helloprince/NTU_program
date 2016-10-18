rm(list=ls(all.names=TRUE))
library(XML)
library(RCurl)
library(httr)


pathURL = "http://app2.atmovies.com.tw/eweekly/"
alltitle = data.frame()
  tempDATA = getURL(pathURL)
  xmldoc = htmlParse(tempDATA, encoding = "utf-8")
  title = xpathSApply(xmldoc, "//header/h2//a", xmlValue)
  url = xpathSApply(xmldoc, "//article/p", xmlValue)
  url = gsub("\n", "", url)
  url = gsub("\t", "", url)
  url = gsub("\r", "", url)
  
  result = tryCatch({
    alltitle = rbind(alltitle, data.frame(title, url))
    print(url)
  }, error = function(err){
    print(url)
  }
  )

write.table(alltitle, file = "movie.csv")
