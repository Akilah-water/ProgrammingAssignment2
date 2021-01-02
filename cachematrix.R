## Put comments here that give an overall description of what your
## functions do
## Functions to cache the inverse of a matrix

## Write a short comment describing this function

## Create a special matrix object that can cache its inverse called makeCacheMatrix function
makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
    ## Set matrix
    set <- function(matrix) {
        m <<- matrix
        inv <<- NULL
    }
    ## Get matrix
    get <- function() {
        # Return the matrix
        m
    }
    ## Set inverse of matrix
    setInverse <- function(inverse) {
        inv <<- inverse
    }
    ## Get inverse of matrix
    getInverse <- function() {
        # Return the inverse property
        inv
    }
    ## List functions
    list(set = set, get = get,
         setInverse = setInverse,
         getInverse = getInverse)
    
}


## Write a short comment describing this function
##Compute the inverse of the special "matrix" returned by previous makeCacheMatrix function 
cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    inv <- x$getInverse()
    ##Retrieve inverse from the cache
    if (!is.null(inv)) {
        message("retrieving cached data")
        return(inv)
    }
    ##Compute inverse by solving 
    data <- x$get()
    inv <- solve(data, ...)
    x$setInverse(inv)
    inv
}
