library(igraph)
#****************************
#Community Detection
#****************************

#************************************
#  Graph 4
#************************************
Graph_4_simplified <- simplify(as.undirected(GraphG4, mode= "mutual"), remove.multiple = TRUE, remove.loops = TRUE)

# Run the Louvain clustering community detection algorithm
CommunityG4 <- cluster_louvain(Graph_4_simplified, weights = NULL)

# Create data frame with the ids of individuals and their assigned communities
memberships <- membership(CommunityG4)
resultG4 <- as.data.frame(cbind(names(memberships), membership(CommunityG4)))
names(resultG4) <- c("ID", "group_assignment")
length(CommunityG4)

subset(resultG4, group_assignment == 4795)#degree
subset(resultG4, group_assignment == 4795)#degree

#************************************
#  Graph 3
#************************************
Graph_3_simplified <- simplify(as.undirected(GraphG3, mode= "mutual"), remove.multiple = TRUE, remove.loops = TRUE)

# Run the Louvain clustering community detection algorithm
CommunityG3 <- cluster_louvain(Graph_3_simplified, weights = NULL)

# Create data frame with the ids of individuals and their assigned communities
membershipsG3 <- membership(CommunityG3)
resultG3 <- as.data.frame(cbind(names(membershipsG3), membership(CommunityG3)))
names(resultG3) <- c("ID", "group_assignment")
length(CommunityG3)
subset(resultG3, group_assignment == 3915)

degree(GraphG1,mode = "total")[match(max(degree(GraphG1,mode = "total")),
      degree(GraphG1,mode = "total"))]

#************************************
#  Graph 2
#************************************
Graph_2_simplified <- simplify(as.undirected(GraphG2, mode= "mutual"), remove.multiple = TRUE, remove.loops = TRUE)

# Run the Louvain clustering community detection algorithm
CommunityG2 <- cluster_louvain(Graph_2_simplified, weights = NULL)

# Create data frame with the ids of individuals and their assigned communities
membershipsG2 <- membership(CommunityG2)
resultG2 <- as.data.frame(cbind(names(membershipsG2), membership(CommunityG2)))
names(resultG2) <- c("ID", "group_assignment")
length(CommunityG2)
subset(resultG2, ID == 1041)

#************************************
#  Graph 1
#************************************
Graph_1_simplified <- simplify(as.undirected(GraphG1, mode= "mutual"), 
                               remove.multiple = TRUE, remove.loops = TRUE)

# Run the Louvain clustering community detection algorithm
CommunityG1 <- cluster_louvain(Graph_1_simplified, weights = NULL)

# Create data frame with the ids of individuals and their assigned communities
membershipsG1 <- membership(CommunityG1)
resultG1 <- as.data.frame(cbind(names(membershipsG1), membership(CommunityG1)))
names(resultG1) <- c("ID", "group_assignment")
length(CommunityG1)
subset(resultG1, ID == 1041)
#***********************************************
subset(resultG4, group_assignment == 8478)
print(length(l1$ID))

subset(resultG2, ID == 0)
subset(resultG3, ID == 0)
subset(resultG4, ID == 90)
#***********************************************

#MODULARITY

modularity(CommunityG1)
modularity(CommunityG2)
modularity(CommunityG3)
modularity(CommunityG4)


#***********************************************
#inputCommunity
#***********************************************
library(igraph)
communityGraph <- graph.data.frame(read.table("C://Users//Aditi//Desktop//Network Science//Project//Dataset//Amazon0601//CommunityS1.txt"), 
                                   directed=TRUE)
communityVertex<-c("92","161","162","163","164","224","225","226","228","229" ,"294" ,"1128","1129","2527")
V(communityGraph)$color <- ifelse(V(communityGraph)$name %in% communityVertex, "pink", "blue")
V(communityGraph)$name

windows(width = 25,height = 15)
plot(communityGraph,vertex.label.dist=2.5)


match(max(degree(communityGraph)),
    degree(communityGraph))
degree(communityGraph)[match(max(degree(communityGraph)),degree(communityGraph))]

#**************************************************************
#Histogram
#**************************************************************
length(CommunityG1)
length(CommunityG2)
length(CommunityG3)
length(CommunityG4)

timeStamp<-c("T0","T1","T1","T2")
numberofCommunities <- c(length(CommunityG1),length(CommunityG2),length(CommunityG3),length(CommunityG4))
windows(width = 25,height = 15)
barplot(timeStamp)


#******************************************************
adjacentTrianglesG4 <- adjacent.triangles(GraphG4)
max(adjacentTrianglesG4)
match(max(adjacentTrianglesG4),
      adjacentTrianglesG4)

x<-count_triangles(Graph_1_simplified)
#*************************************************************
communityGraph <- graph.data.frame(read.table("C://Users//Aditi//Desktop//Network Science//Project//Dataset//Amazon0601//CommunityS1.txt"), 
                                   directed=TRUE)
communityGraph <- simplify(communityGraph, remove.multiple = F, remove.loops = T) 

bookvertex<-c("Junebug","Moon","NoMore","Eagle","Foliage","Wildlife","Messages","Uists")
DVD<-c("Plays")
V(communityGraph)$color <- ifelse(V(communityGraph)$name %in% bookvertex, "lightgreen", "yellow")

windows()
plot(communityGraph,edge.arrow.size=.4)
legend("topleft", c("pink","blue"), cex = 0.8,fill = c("pink","blue"))

