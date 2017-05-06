library(igraph)
inputFile <- "C://Users//Aditi//Desktop//Network Science//Project//Dataset//Rdemo//amazon0601.txt"
inputBookId <-"C://Users//Aditi//Desktop//Network Science//Project//Dataset//Rdemo//BookID.txt"
outputFile<-"C://Users//Aditi//Desktop//Network Science//Project//Dataset//Rdemo//Book0601.txt"
readGraph1 <- read.table(inputFile)
readNodeId<-read.table(inputBookId)

graph1<-as.data.frame.matrix(readGraph1) 
bookIdDataframe<-as.data.frame.matrix(readNodeId) 



fileConn<-file(outputFile,"w")

for(i in 1:nrow(graph1)) {
  if(graph1[i,1] %in% bookIdDataframe$V1 && graph1[i,2] %in% bookIdDataframe$V1)
  {
    writeLines(paste(c(graph1[i,1],graph1[i,2]), collapse = "   "), fileConn)
  }
}

close(fileConn)
