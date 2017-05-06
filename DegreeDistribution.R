library(igraph)
inputFileG4 <- "C://Users//Aditi//Desktop//Network Science//Project//Dataset//Amazon0601//amazon0601.txt"
inputFileG3 <-"C://Users//Aditi//Desktop//Network Science//Project//Dataset//Amazon0505//amazon0505.txt"
inputFileG2 <- "C://Users//Aditi//Desktop//Network Science//Project//Dataset//Amazon0312//amazon0312.txt"
inputFileG1 <- "C://Users//Aditi//Desktop//Network Science//Project//Dataset//Amazon0302//amazon0302.txt"

GraphG4 <- graph.data.frame(read.table(inputFileG4), directed=TRUE)
GraphG3 <- graph.data.frame(read.table(inputFileG3), directed=TRUE)
GraphG2 <- graph.data.frame(read.table(inputFileG2), directed=TRUE)
GraphG1 <- graph.data.frame(read.table(inputFileG1), directed=TRUE)


max(degree(GraphG1,mode = "total"))
match(max(degree(GraphG1,mode = "total")),
      degree(GraphG1,mode = "total"))

windows()
plot(degree.distribution(GraphG4,mode="total"),pch=20, type = "p", col="red",xlab = "Degree",ylab = "Probability",
       main = "Degree Distribution of 4 Graphs of different timestamps")
lines(degree.distribution(GraphG3,mode="total"),pch=20, type = "p", col="green")
lines(degree.distribution(GraphG2,mode="total"),pch=20, type = "p", col="blue")
lines(degree.distribution(GraphG1,mode="total"), pch=20, type = "p",col="cyan")
legend("topright", c("T0: March, 02","T1: March, 12","T2: May, 05","T3: June, 01"), 
       cex = 0.8,fill = c("cyan","blue","green","red"))

windows()
plot(degree.distribution(GraphG4,mode="in"), pch=20,type = "p", col="red",
     xlab = "Degree",ylab = "Probability",main = "In-Degree Distribution of 4 Graphs of different timestamps")
lines(degree.distribution(GraphG3,mode="in"), pch=20,type = "p", col="green")
lines(degree.distribution(GraphG2,mode="in"), pch=20,type = "p", col="blue")
lines(degree.distribution(GraphG1,mode="in"), pch=20,type = "p",col="cyan")
legend("topright", c("T0: March, 02","T1: March, 12","T2: May, 05","T3: June, 01"), 
       cex = 0.8,fill = c("cyan","blue","green","red"))

#Out degree Distribution
windows()
plot(degree.distribution(GraphG4,mode="out"),pch=20,type = "l", col="red",
      xlab = "Degree",ylab = "Probability",main = "Out-Degree Distribution of 4 Graphs of different timestamps")
lines(degree.distribution(GraphG3,mode="out"),pch=20,type = "l", col="green")
lines(degree.distribution(GraphG2,mode="out"),pch=20,type = "l", col="blue")
lines(degree.distribution(GraphG1,mode="out"),pch=20,type = "l",col="cyan")
legend("topleft", c("T0: March, 02","T1: March, 12","T2: May, 05","T3: June, 01"), cex = 0.8,fill = c("cyan","blue","green","red"))

plot(degree.distribution(GraphG4,mode="total"), pch=20, type = "p",col="red",xlab = "Degree",ylab = "Probability",main = "Degree Distribution of Graph-06/01")
lines(degree.distribution(GraphG4Book,mode="total"),  pch=20, type = "p",col="green")
lines(degree.distribution(GraphG4Music,mode="total"), pch=20, type = "p",col="blue")
lines(degree.distribution(GraphG4Video,mode="total"), pch=20, type = "p",col="blueviolet")
lines(degree.distribution(GraphG4DVD,mode="total"), pch=20, type = "p",col="chocolate1")
legend("topright", c("Total Graph","Book","Music","Video","DVD"), cex = 0.8,fill = c("red","green","blue","blueviolet","chocolate1"))
