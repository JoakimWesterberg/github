## Creating directory, if not already there
if (!file.exists("data2")){
  dir.create("data2")
}
## Downloading csv-file from internet
fileUrl <- "https://data.baltimorecity.gov/api/views/dz54-2aru/rows.csv?accessType=DOWNLOAD"
download.file(fileUrl, destfile = "./data2/cameras.csv", method = "auto")
list.files(".data2")
## setting the date the data was downloaded, to keep track
dateDownloaded <- date()
dateDownloaded
##
