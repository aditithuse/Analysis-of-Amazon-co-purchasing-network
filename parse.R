library(igraph)
inputFile <- "C://Users//Aditi//Desktop//Network Science//Project//Dataset//Rdemo//amazon0601.txt"
inputBookId <-"C://Users//Aditi//Desktop//Network Science//Project//Dataset//Rdemo//BookID.txt"
outputFile<-"C://Users//Aditi//Desktop//Network Science//Project//Dataset//Rdemo//Book0601.txt"
readGraph1 <- read.table(inputFile)
readNodeId<-read.table(inputBookId)

graph1<-as.data.frame.matrix(readGraph1) 
bookIdDataframe<-as.data.frame.matrix(readNodeId) 
print(bookIdDataframe[4,1])


fileConn<-file(outputFile,"w")
#writeLines("This is line",con=fileConn,sep="\n") 
#writeLines("This is line 2",con=fileConn) 
#close(fileConn) 



for(i in 1:nrow(graph1)) {
  #if(match(graph1[i,1], bookIdDataframe$V1)!=NA)
  if(graph1[i,1] %in% bookIdDataframe$V1 && graph1[i,2] %in% bookIdDataframe$V1)
  {
    #print(paste(c(graph1[i,1],graph1[i,2]), collapse = "   "))
    writeLines(paste(c(graph1[i,1],graph1[i,2]), collapse = "   "), fileConn)
  }
}

close(fileConn)
