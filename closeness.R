GraphG4Book.closeness <- closeness(GraphG4Book, vids = V(GraphG4Book))

inputFileG3Book <- "C://Users//Aditi//Desktop//Network Science//Project//Dataset//Amazon0505//Book0505.txt"
GraphG3Book<- graph.data.frame(read.table(inputFileG3Book), directed=TRUE)

library(igraph)
GraphG4Music.closeness <- closeness(GraphG4Music, vids = V(GraphG4Music))
GraphG4Video.closeness <- closeness(GraphG4Video, vids = V(GraphG4Video))
GraphG4DVD.closeness <- closeness(GraphG4DVD, vids = V(GraphG4DVD))
