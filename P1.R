library(igraph)

inputFile <- "C://Users//Aditi//Desktop//Network Science//Project//Dataset//amazon0601.txt"

readGraph1 <- read.table(inputFile)
Graph1June2003 <- graph.data.frame(readGraph1, directed=TRUE)

#In-degree distribution

DegreeIn<-table(degree(Graph1June2003,mode="in"))
DegreeIn<-as.data.frame(table(degree(Graph1June2003,mode="in")))

plot(DegreeIn$Var1,DegreeIn$Freq)

#out-degree distribution

#DegreeOut<-table(degree(Graph1June2003,mode="out"))
DegreeOut<-as.data.frame(table(degree(Graph1June2003,mode="out")))

plot(DegreeOut$Var1,DegreeOut$Freq)

degree.distribution(Graph1June2003,mode="out")

motif<-motifs(Graph1June2003,size = 3)
count_motifs(Graph1June2003,3)
typeof(motif)

