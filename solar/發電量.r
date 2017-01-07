library(rvest)
library(XML)
library(XLConnect)

url100='http://twpage5000.com/shinepvtech/knowledge.html'
table100=readHTMLTable(url100)
write.csv(table100[[6]], file = "C:/Users/asus/Desktop/昱辰/數位應程/期末/solar100.csv")

url102='http://www.solar2money.com/solar/how_much_solar_energy.html'
table102=readHTMLTable(url102)
write.csv(table102[[3]], file = "C:/Users/asus/Desktop/昱辰/數位應程/期末/solar102.csv")

url103='http://mrpv2.mynet.com.tw/information.php?sort_id=31'
table103=readHTMLTable(url103)
write.csv(table103[[1]], file = "C:/Users/asus/Desktop/昱辰/數位應程/期末/solar103.csv")

url0003='http://www.sunwafer.com.tw/faq/fa-dian-liang-de-yi-lu/'
table0003=readHTMLTable(url0003)
write.csv(table0003[[2]], file = "C:/Users/asus/Desktop/昱辰/數位應程/期末/solar0003.csv")

setwd("C:\\Users\\asus\\Desktop\\昱辰\\數位應程\\期末")
years <- c(100,102,103,104)
for(tabs in years){
  srccsv <- paste0("solar", tabs, ".csv")
  exc <- read.csv(srccsv)
  assign(paste0("solars", tabs),exc) 
}
loc <- c("基隆", as.character(solars102[2:7, 2]), "南投", as.character(solars102[8:17, 2]), "連江")
ysolar100 <- c(NA, as.numeric(solars100[1:6, 4]), NA, as.numeric(solars100[7:15, 4]), NA, NA)
ysolar102 <- c(NA, as.numeric(solars102[2:7, 4]), NA, as.numeric(solars102[8:17, 4]), NA)
tempord <- c(3:7, 10:11, 13, 12, 14, 18:20, 8, 15, 21, 17, 16, 9)
ysolar103 <- c(as.numeric(solars103[tempord, 3]))
ysolar104 <- solars104[tempord, 3]
