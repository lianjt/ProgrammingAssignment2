## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    ## inversed matrix
    inv <- NULL
    set <- function(y) {
        ## assigned to x
        x <<- y
    }
    get <- function() {
        ## return original matrix
        x
    }
    setinverse <- function(inverse) {
        ## set inversed matrix
        inv <<- inverse
    }
    getinverse <- function() {
        ## return inversed matrix
        inv
    }
    list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    inv <- x$getinverse()
    ## if we have cached matrix
    if (!is.null(inv)) {
        message("getting inversed matrix")
        return(inv)
    }
    ## get original matrix
    data <- x$get()
    ## inverse it
    inv <-slove(data)
    ## set it
    x$setinverse(inv)
    ## return
    inv
}
