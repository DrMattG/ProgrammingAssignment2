## Put comments here that give an overall description of what your
## functions do
## Create a list of functions that can cache the inverse of a matrix
makeCacheMatrix <- function(x=matrix()) {
    m <- NULL
    set <- function(y) {
        x <<- y
        m <<- NULL
    }
    get <- function() x
    setInverse <- function(inverse) m <<-inverse
    getInverse <- function() m
    list(set = set, get = get,
         setInverse = setInverse,
         getInverse = getInverse)
}
cacheSolve <- function(x, ...) {
## Return a matrix that is the inverse of 'x' unless the inverse already exisits then use the cache
	m<-x$getInverse()
	if(! is.null(m)){
	print("Getting cached data")
	}
	m<-solve(x$get())
	x$setInverse(m)
}

