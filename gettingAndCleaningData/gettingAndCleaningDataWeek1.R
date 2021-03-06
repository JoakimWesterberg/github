## N�gra git-kommandon
## git status, ger status
## git commit -a -m "kommentarer h�r"
## git push origin master (f�r att f� upp skiten p� n�tet)

## setting the working directory
setwd("C:\\Users\\erajweg\\Documents\\github\\gettingAndCleaningData")

## Creating directory, if not already there
if (!file.exists("data")){
  dir.create("data")
}

## Downloading csv-file from internet
fileUrl <- "https://data.baltimorecity.gov/api/views/dz54-2aru/rows.csv?accessType=DOWNLOAD"
download.file(fileUrl, destfile = "./data/cameras.csv", method = "auto")
list.files(".data")

## setting the date the data was downloaded, to keep track
dateDownloaded <- date()
dateDownloaded

## Downloading xls-file from internet
fileUrl <- "https://data.baltimorecity.gov/api/views/dz54-2aru/rows.xls?accessType=DOWNLOAD"
download.file(fileUrl, destfile = "./data/cameras.xlsx", method = "auto", mode = "wb")
list.files(".data")
dateDownloaded <- date()
dateDownloaded

## installing packages to read from xls
install.packages("xlsx")
library(xlsx)

## read xls-file
cameraData <- read.xlsx("./data/cameras.xlsx", sheetIndex = 1, header = TRUE)


## use read.table() to read from "flat" file, most common function to read file
## a bit slow though, and use RAM
## important parameters: file, header, sep, row.names, nrows
cameraData <- read.table("./data/cameras.csv", sep = ",", header = TRUE)
head(cameraData)




## installing data.table package
install.packages("data.table")

## adding library to workspace
library(data.table)
