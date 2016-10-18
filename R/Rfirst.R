rm(list=ls(all.names=TRUE))
library(XML)
library(RCurl)
library(httr)


subpathURL = "https://www.ptt.cc/bbs/movie/index"
startNo = 4685
endNo = 4687
alltitle = data.frame()

for(i in c(startNo:endNo)){
pathURL = paste(subpathURL, i, ".html", sep="")
print(pathURL)

tempDATA = getURL(pathURL)
xmldoc = htmlParse(tempDATA, encoding = "utf-8")
title = xpathSApply(xmldoc, "//div[@class=\"title\"]", xmlValue)
title = gsub("\n", "", title)
title = gsub("\t", "", title)
url = xpathSApply(xmldoc, "//div[@class=\"title\"]/a//@href")
date = xpathSApply(xmldoc, "//div[@class=\"date\"]", xmlValue)

result = tryCatch({
alltitle = rbind(alltitle, data.frame(title, url))
print(url)
}, error = function(err){
  print(url)
  }
)
}
write.table(alltitle, file = "movie.csv")
