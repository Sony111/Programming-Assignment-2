## Create a "CacheMatrix" with vector,nrow and ncol as arguments
makeCacheMatrix <- function(m,r,c) {
        m1 <- NULL
        ##  creating matrix by passing values to the arguments of function makeCacheMatrix
      m <<- matrix(m,nrow=r,ncol=c) 
      m1 <<- NULL
    
    ## create a cacheSolve function that returns the inverse of a matrix,(it if necessary )or else simply display existing 
    cacheSolve <- function() {
        if (is.null(m1)) {
            m1 <<- solve(m)
            print(m)
        }
        m1
    }
    ## return the CacheVector object as a list of  function
    list( cacheSolve = cacheSolve)
}
