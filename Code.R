library(igraph)
library(plotrix)
install.packages("plotrix")

#pie chart
slices<-c(ecount(GraphG4)-ecount(GraphG4Book)+ecount(GraphG4DVD)+ecount(GraphG4Music)+ecount(GraphG4Video),
          ecount(GraphG4DVD),ecount(GraphG4Book),ecount(GraphG4Music),ecount(GraphG4Video))
piepercent<- round(100*slices/sum(slices), 1)
lbls <-c("Not in same category","DVD","Book","Music","Video")
pie(slices, labels = piepercent,main="Pie Chart of Countries",col = rainbow(length(slices)))
legend("topright", c("Not in same category","DVD","Book","Music","Video"), cex = 0.8,fill = rainbow(length(slices)))

#Degree Distribution
DegreeDistributionG4 <- degree.distribution(GraphG4,mode="total")
plot(DegreeDistributionG4)
DegreeOut <- degree.distribution(GraphG4,mode="out")
plot(DegreeOut)
Degreein <- degree.distribution(GraphG4,mode="in")
plot(Degreein)
