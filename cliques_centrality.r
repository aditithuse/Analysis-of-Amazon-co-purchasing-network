
library(igraph)

############################################################################
#                                                                                    #
#                               NODE AND EDGE COUNT                                  #
#                                                                                    #
############################################################################

vcount(Graph_0)
vcount(Graph_1)
vcount(Graph_2)
vcount(Graph_3)

ecount(Graph_0)
ecount(Graph_1)
ecount(Graph_2)
ecount(Graph_3)


############################################################################
#                                                                                    #
# Clustering coefficient, betweenness, and closeness                                 #
# all describe the small world properties of the network.                            #
# A network with small world properties is one in which                              #
# it takes a relatively short path to get from one node to the next                  #
# (e.g., six degrees of separation)                                                  #
#                                                                                    #
############################################################################



############################################################################
#                                                                                    #
#                               CLUSTER COEFFICIENT                                  #
#                                                                                    #
############################################################################

transitivity(Graph_0, type = c("average"))
transitivity(Graph_1, type = c("average"))
transitivity(Graph_2, type = c("average"))
transitivity(Graph_3, type = c("average"))


############################################################################
#                                                                                    #
#                                     BETWEENNESS                                    #
# Betweenness is the number of shortest paths between two nodes that go through each #
# node of interest                                                                   #
#                                                                                    #
############################################################################

graph0.betweenness<-betweenness(Graph_0, v=V(Graph_0))
graph1.betweenness<-betweenness(Graph_1, v=V(Graph_1))
graph2.betweenness<-betweenness(Graph_2, v=V(Graph_2))
graph3.betweenness<-betweenness(Graph_3, v=V(Graph_3))

graph2_Book0505.betweenness <- betweenness(Graph_Book0505, v=V(Graph_Book0505))
graph2_DVDs0505.betweenness <- betweenness(Graph_DVDs0505, v=V(Graph_DVDs0505))
graph2_Music0505.betweenness <- betweenness(Graph_Music0505, v=V(Graph_Music0505))
graph2_Video0505.betweenness <- betweenness(Graph_Video0505, v=V(Graph_Video0505))

graph1_Book0312.betweenness <- betweenness(Graph_Book0312, v=V(Graph_Book0312))
graph1_DVDs0312.betweenness <- betweenness(Graph_DVDs0312, v=V(Graph_DVDs0312))
graph1_Music0312.betweenness <- betweenness(Graph_Music0312, v=V(Graph_Music0312))
graph1_Video0312.betweenness <- betweenness(Graph_Video0312, v=V(Graph_Video0312))

graph0_Book0302.betweenness <- betweenness(Graph_Book0302, v=V(Graph_Book0302))
graph0_DVDs0302.betweenness <- betweenness(Graph_DVDs0302, v=V(Graph_DVDs0302))
graph0_Music0302.betweenness <- betweenness(Graph_Music0302, v=V(Graph_Music0302))
graph0_Video0302.betweenness <- betweenness(Graph_Video0302, v=V(Graph_Video0302))

graph3_Book0601.betweenness <- betweenness(Graph_Book0601, v=V(Graph_Book0601))
graph3_DVDs0601.betweenness <- betweenness(Graph_DVDs0601, v=V(Graph_DVDs0601))
graph3_Music0601.betweenness <- betweenness(Graph_Music0601, v=V(Graph_Music0601))
graph3_Video0601.betweenness <- betweenness(Graph_Video0601, v=V(Graph_Video0601))


graph0.edge.betweenness<-edge.betweenness(Graph_0, e=E(Graph_0))
graph1.edge.betweenness<-edge.betweenness(Graph_1, e=E(Graph_1))
graph2.edge.betweenness<-edge.betweenness(Graph_2, e=E(Graph_2))
graph3.edge.betweenness<-edge.betweenness(Graph_3, e=E(Graph_3))


############################################################################
#                                                                                    #
#                                     CLOSENESS                                      #
# Closeness refers to how connected a node is to its neighbors                       #                                                                  #
#                                                                                    #
############################################################################

graph0.closeness <- closeness(Graph_0, vids = V(Graph_0))
graph1.closeness <- closeness(Graph_1, vids = V(Graph_1))
graph2.closeness <- closeness(Graph_2, vids = V(Graph_2))
graph3.closeness <- closeness(Graph_3, vids = V(Graph_3))

############################################################################
#                                                                                    #
#                   MAKING GRAPHS UNDIRECTED AND GENERATING CLIQUES                 #
#                                                                                    #
############################################################################

Graph_0_undirected <- as.undirected(Graph_0, mode= "mutual")
Graph_1_undirected <- as.undirected(Graph_1, mode= "mutual")
Graph_2_undirected <- as.undirected(Graph_2, mode= "mutual")
Graph_3_undirected <- as.undirected(Graph_3, mode= "mutual")

Graph_0_simplified <- simplify(as.undirected(Graph_0, mode= "mutual"), remove.multiple = TRUE, remove.loops = TRUE)
Graph_1_simplified <- simplify(as.undirected(Graph_1, mode= "mutual"), remove.multiple = TRUE, remove.loops = TRUE)
Graph_2_simplified <- simplify(as.undirected(Graph_2, mode= "mutual"), remove.multiple = TRUE, remove.loops = TRUE)
Graph_3_simplified <- simplify(as.undirected(Graph_3, mode= "mutual"), remove.multiple = TRUE, remove.loops = TRUE)

Graph_Book0302_simplified <- simplify(as.undirected(Graph_Book0302, mode= "mutual"), remove.multiple = TRUE, remove.loops = TRUE)
Graph_Book0312_simplified <- simplify(as.undirected(Graph_Book0312, mode= "mutual"), remove.multiple = TRUE, remove.loops = TRUE)
Graph_Book0505_simplified <- simplify(as.undirected(Graph_Book0505, mode= "mutual"), remove.multiple = TRUE, remove.loops = TRUE)
Graph_Book0601_simplified <- simplify(as.undirected(Graph_Book0601, mode= "mutual"), remove.multiple = TRUE, remove.loops = TRUE)

Graph_Music0302_simplified <- simplify(as.undirected(Graph_Music0302, mode= "mutual"), remove.multiple = TRUE, remove.loops = TRUE)
Graph_Music0312_simplified <- simplify(as.undirected(Graph_Music0312, mode= "mutual"), remove.multiple = TRUE, remove.loops = TRUE)
Graph_Music0505_simplified <- simplify(as.undirected(Graph_Music0505, mode= "mutual"), remove.multiple = TRUE, remove.loops = TRUE)
Graph_Music0601_simplified <- simplify(as.undirected(Graph_Music0601, mode= "mutual"), remove.multiple = TRUE, remove.loops = TRUE)

Graph_Video0302_simplified <- simplify(as.undirected(Graph_Video0302, mode= "mutual"), remove.multiple = TRUE, remove.loops = TRUE)
Graph_Video0312_simplified <- simplify(as.undirected(Graph_Video0312, mode= "mutual"), remove.multiple = TRUE, remove.loops = TRUE)
Graph_Video0505_simplified <- simplify(as.undirected(Graph_Video0505, mode= "mutual"), remove.multiple = TRUE, remove.loops = TRUE)
Graph_Video0601_simplified <- simplify(as.undirected(Graph_Video0601, mode= "mutual"), remove.multiple = TRUE, remove.loops = TRUE)

Graph_DVDs0302_simplified <- simplify(as.undirected(Graph_DVDs0302, mode= "mutual"), remove.multiple = TRUE, remove.loops = TRUE)
Graph_DVDs0312_simplified <- simplify(as.undirected(Graph_DVDs0312, mode= "mutual"), remove.multiple = TRUE, remove.loops = TRUE)
Graph_DVDs0505_simplified <- simplify(as.undirected(Graph_DVDs0505, mode= "mutual"), remove.multiple = TRUE, remove.loops = TRUE)
Graph_DVDs0601_simplified <- simplify(as.undirected(Graph_DVDs0601, mode= "mutual"), remove.multiple = TRUE, remove.loops = TRUE)

Graph_0_sizeofMaxClique <- clique.number(Graph_0_simplified)
Graph_1_sizeofMaxClique <- clique.number(Graph_1_simplified)
Graph_2_sizeofMaxClique <- clique.number(Graph_2_simplified)
Graph_3_sizeofMaxClique <- clique.number(Graph_3_simplified)

Graph_Book0302_sizeofMaxClique <- clique.number(Graph_Book0302_simplified)
Graph_Book0312_sizeofMaxClique <- clique.number(Graph_Book0312_simplified)
Graph_Book0505_sizeofMaxClique <- clique.number(Graph_Book0505_simplified)
Graph_Book0601_sizeofMaxClique <- clique.number(Graph_Book0601_simplified)

Graph_Music0302_sizeofMaxClique <- clique.number(Graph_Music0302_simplified)
Graph_Music0312_sizeofMaxClique <- clique.number(Graph_Music0312_simplified)
Graph_Music0505_sizeofMaxClique <- clique.number(Graph_Music0505_simplified)
Graph_Music0601_sizeofMaxClique <- clique.number(Graph_Music0601_simplified)

Graph_Video0302_sizeofMaxClique <- clique.number(Graph_Video0302_simplified)
Graph_Video0312_sizeofMaxClique <- clique.number(Graph_Video0312_simplified)
Graph_Video0505_sizeofMaxClique <- clique.number(Graph_Video0505_simplified)
Graph_Video0601_sizeofMaxClique <- clique.number(Graph_Video0601_simplified)

Graph_DVDs0302_sizeofMaxClique <- clique.number(Graph_DVDs0302_simplified)
Graph_DVDs0312_sizeofMaxClique <- clique.number(Graph_DVDs0312_simplified)
Graph_DVDs0505_sizeofMaxClique <- clique.number(Graph_DVDs0505_simplified)
Graph_DVDs0601_sizeofMaxClique <- clique.number(Graph_DVDs0601_simplified)

Graph_0_cliques3 <- cliques(Graph_0_simplified, min = 3, max = 3)
Graph_1_cliques3 <- cliques(Graph_1_simplified, min = 3, max = 3)
Graph_2_cliques3 <- cliques(Graph_2_simplified, min = 3, max = 3)
Graph_3_cliques3 <- cliques(Graph_3_simplified, min = 3, max = 3)
#Graph_0_cliques3 <- adjacent.triangles(Graph_0_simplified)

