## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
makeCacheMatrix <- function(x = matrix()) {
	##creates a special "matrix", which is really a list containing a function to set and get
    m <- NULL    ##creates a null
    set <- function(y) {
	##set globals
        x <<- y
        m <<- NULL
    }
	#functions for getting, and setting the globals
    get <- function() x
    setInverse <- function(Inverse) m <<- Inverse
    getInverse <- function() m
	#return a list of the functions
    list(set = set, get = get, 
         setInverse = setInverse,
         getInverse = getInverse)
}





## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    m <- x$getInverse() ##ask whether you have an x matrix in the cache
    if(!is.null(m)) {   ##if it exixts, gives you a message, if not, calculate the inverse
        message("getting cached data")
        return(m)
    }
    data <- x$get() ##no chache, start the machinery!!
    m <- solve(data) ##compute the inverse
    x$setInverse(m) ##save to cache
    m       ##return the inverse
}
