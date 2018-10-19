library(rvest)
library(dplyr)
library(readtext)
tryCatch({
  url <- "http://farm1.static.flickr.com/79/259117078_cde4bdfc64.jpg"
  fileName <- "/Users/owoeyefemi/RstudioProjects/SteganalysisProject/fall11_urls.txt"
  conn <- file(fileName,open="r")
  linn <-readLines(conn)
  for (i in 2000:100){
    lines = strsplit(linn[i],"\t")
    file_name =  basename(lines[[1]][2])
    print(file_name)
    if(grepl("flickr", lines[[1]][2]) == TRUE) 
    {
      download.file(lines[[1]][2], file_name, mode = "wb")
    }
   
  }
  #close(conn)
},
  warning = function(warning_message) {
    print(warning_message)
  },
  error=function(error_message) {
    print(error_message)
   })



