#*******************
#Rich Graphs
#*******************

inputFileG4 <- "C://Users//Aditi//Desktop//Network Science//Project//Dataset//Amazon0601//amazon0601.txt"
inputFileG3 <-"C://Users//Aditi//Desktop//Network Science//Project//Dataset//Amazon0505//amazon0505.txt"
inputFileG2 <- "C://Users//Aditi//Desktop//Network Science//Project//Dataset//Amazon0312//amazon0312.txt"
inputFileG1 <- "C://Users//Aditi//Desktop//Network Science//Project//Dataset//Amazon0302//amazon0302.txt"

GraphG4 <- graph.data.frame(read.table(inputFileG4), directed=TRUE)
GraphG3 <- graph.data.frame(read.table(inputFileG3), directed=TRUE)
GraphG2 <- graph.data.frame(read.table(inputFileG2), directed=TRUE)
GraphG1 <- graph.data.frame(read.table(inputFileG1), directed=TRUE)

#*******************
#Graph 4
#*******************

inputG4Book<-"C://Users//Aditi//Desktop//Network Science//Project//Dataset//Amazon0601//Book0601.txt"
inputG4DVD<-"C://Users//Aditi//Desktop//Network Science//Project//Dataset//Amazon0601//DVDs0601.txt"
inputG4Music<-"C://Users//Aditi//Desktop//Network Science//Project//Dataset//Amazon0601//Music0601.txt"
inputG4Video<-"C://Users//Aditi//Desktop//Network Science//Project//Dataset//Amazon0601//Video0601.txt"

GraphG4Book <- graph.data.frame(read.table(inputG4Book), directed=TRUE)
GraphG4DVD <- graph.data.frame(read.table(inputG4DVD), directed=TRUE)
GraphG4Music <- graph.data.frame(read.table(inputG4Music), directed=TRUE)
GraphG4Video <- graph.data.frame(read.table(inputG4Video), directed=TRUE)


#*******************
#Graph 3
#*******************
inputFileG3Book <-"C://Users//Aditi//Desktop//Network Science//Project//Dataset//Amazon0505//Book0505.txt"
inputFileG3Music <-"C://Users//Aditi//Desktop//Network Science//Project//Dataset//Amazon0505//Music0505.txt"
inputFileG3Video <-"C://Users//Aditi//Desktop//Network Science//Project//Dataset//Amazon0505//Video0505.txt"
inputFileG3DVD <- "C://Users//Aditi//Desktop//Network Science//Project//Dataset//Amazon0505//DVDs0505.txt"

GraphG3Book <- graph.data.frame(read.table(inputFileG3Book), directed=TRUE)
GraphG3Music <- graph.data.frame(read.table(inputFileG3Music), directed=TRUE)
GraphG3Video <- graph.data.frame(read.table(inputFileG3Video), directed=TRUE)
GraphG3DVD <- graph.data.frame(read.table(inputFileG3DVD), directed=TRUE)


#*******************
#Graph 2
#*******************

inputFileG2Book <-"C://Users//Aditi//Desktop//Network Science//Project//Dataset//Amazon0312//Book0312.txt"
inputFileG2Music <-"C://Users//Aditi//Desktop//Network Science//Project//Dataset//Amazon0312//Music0312.txt"
inputFileG2Video <-"C://Users//Aditi//Desktop//Network Science//Project//Dataset//Amazon0312//Video0312.txt"
inputFileG2DVD <- "C://Users//Aditi//Desktop//Network Science//Project//Dataset//Amazon0312//DVDs0312.txt"

GraphG2Book <- graph.data.frame(read.table(inputFileG2Book), directed=TRUE)
GraphG2Music <- graph.data.frame(read.table(inputFileG2Music), directed=TRUE)
GraphG2Video <- graph.data.frame(read.table(inputFileG2Video), directed=TRUE)
GraphG2DVD <- graph.data.frame(read.table(inputFileG2DVD), directed=TRUE)


#*******************
#Graph 1
#*******************

inputFileG1Book <-"C://Users//Aditi//Desktop//Network Science//Project//Dataset//Amazon0302//Book0302.txt"
inputFileG1Music <-"C://Users//Aditi//Desktop//Network Science//Project//Dataset//Amazon0302//Music0302.txt"
inputFileG1Video <-"C://Users//Aditi//Desktop//Network Science//Project//Dataset//Amazon0302//Video0302.txt"
inputFileG1DVD <- "C://Users//Aditi//Desktop//Network Science//Project//Dataset//Amazon0302//DVDs0302.txt"

GraphG1Book <- graph.data.frame(read.table(inputFileG1Book), directed=TRUE)
GraphG1Music <- graph.data.frame(read.table(inputFileG1Music), directed=TRUE)
GraphG1Video <- graph.data.frame(read.table(inputFileG1Video), directed=TRUE)
GraphG1DVD <- graph.data.frame(read.table(inputFileG1DVD), directed=TRUE)

#total in out
max(degree(GraphG4DVD,mode = "total"))
match(max(degree(GraphG4DVD,mode = "total")),
      degree(GraphG4DVD,mode = "total"))
max(degree(GraphG4DVD,mode = "in"))
match(max(degree(GraphG4DVD,mode = "in")),
      degree(GraphG4DVD,mode = "in"))
max(degree(GraphG4DVD,mode = "out"))
match(max(degree(GraphG4DVD,mode = "out")),
      degree(GraphG4DVD,mode = "out"))


