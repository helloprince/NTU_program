rm(list=ls(all=TRUE))
library(readr)
library(devtool)
install_github('rCharts', 'ramnathv')
library(rCharts)
dataSET <- iris
names(dataSET) <- gsub("\\.", "", names(dataSET))
rPlot(SepalLength ~ SepalWidth | Species, data = dataSET, color='Species', type='point')

