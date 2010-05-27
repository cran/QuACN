.weightStrucFuncMatrix <- function(coeff) {
  function(g) {
    dist.mat <- distanceMatrix(g)
    probvi <- infoTheoreticGCM(g,  coeff = coeff, infofunct = "sphere")$pis
    n_nodes <- length(probvi)
    PolyMat <- matrix(0, nrow = n_nodes, ncol = n_nodes)
    for(i in 1:n_nodes) { 
      for(j in 1:n_nodes) {
        if(i != j) {
          PolyMat[i,j] <- 1 - (abs(probvi[i]-probvi[j]))/2^dist.mat[i,j]
        }
        else {
          PolyMat[i,j] <- 1
        }
      }
    } 
    PolyMat
  }
}

weightStrucFuncMatrix_lin <- .weightStrucFuncMatrix("lin")
weightStrucFuncMatrix_exp <- .weightStrucFuncMatrix("exp")
