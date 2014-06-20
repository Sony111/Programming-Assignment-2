## Create a "CacheVector" that will cache and  calculate  its inverse
makeCacheMatrix <- function(m,r,c) {
        m1 <- NULL
      setMatrix <- function(r,c) {
	print(r)
      m <<- matrix(m,nrow=r,ncol=c) 
	m1 <<- NULL
    }
    
    getMatrix <- function() {
        m
    }
    
    setcacheSolve <- function(inverse) {
        m1 <<- inverse
    }
    ## create a cacheSolve function that returns the inverse of a matrix,it if necessary/existing simply display
    cacheSolve <- function() {
        if (is.null(m1)) {
            m1 <<- solve(m)
        }
        m1
    }
    ## return the CacheVector object as a list of 4 functions
    list(setMatrix = setMatrix, getMatrix = getMatrix, setcacheSolve = setcacheSolve, cacheSolve = cacheSolve)
}
