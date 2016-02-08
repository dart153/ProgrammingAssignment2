## These functions cache the inverse of the inputed matrix.

## This function:
#sets the value of the vector
#gets the value of the vector
#sets the value of the mean
#gets the value of the mean


makeCacheMatrix <- function(x = matrix()) {
inverse <- NULL
        set <- function(y) {
                x <<- y
          inverse <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse) inverse <<- inverse
        getinverse <- function() inverse
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}


## This function returns the inverse of the function.

cacheSolve <- function(x, ...) {
        inverse <- x$getinverse()
        if(!is.null(inverse)) {
                message("getting cached data")
                return(inverse)
        }
        data <- x$get()
        inverse <- mean(data, ...)
        x$setinverse(inverse)
        inverse
        ## Return a matrix that is the inverse of 'x'
}
