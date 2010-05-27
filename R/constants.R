getLabels <- function(l){
#labels of the indiecs - can be useful for plots
labels=list(
wiener=expression(W),
harary=expression(H), 
balabanJ=expression(J), 
meanDistanceDeviation=expression(xxxdeltamue), 
compactness=expression(C), 
productOfRowSums=expression(PRS), 
hyperDistancePathIndex=expression(D[p]), 
totalAdjacency=expression(A), 
zagreb1=expression(Z[1]), 
zagreb2=expression(Z[2]), 
randic=expression(R), 
complexityIndexB=expression(B), 
normalizedEdgeComplexity=expression(E[N]), 
topologicalInfoContent=expression(I[orb]), 
bonchev1=expression(I[D]), 
bonchev2=expression(I[D]^W), 
bertz=expression(C), 
radialCentric=expression(I[C,R]), 
vertexDegree=expression(I[deg]), 
balaban1=expression(U), 
balaban2=expression(X), 
graphVertexComplexity=expression(I[V]),
dehmerEntropySphere=expression(I[f^V]),
dehmerDistanceSphere=expression(I[f^V]^lambda),
dehmerEntropyPath=expression(I[f^P[2]]),
dehmerDistancdPath=expression(I[f^P[2]]^lambda),
dehmerEntropyVertex=expression(I[f^C[2]]),
dehmerDistanceVertex=expression(I[f^C[2]]^lambda),
dehmerEntropyDegree=expression(I[f^deg]),
dehmerDistanceDegree=expression(I[f^deg]^lambda)
)

return(labels[l])
}


