## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
    
    get <- function() x 
    set <- function (y) {
        x <<- y
        inv <<- NULL
    }
    getinv <- function() inv
    setinv <- function(inverse) inv<<- reverse
    list(get=get, set=set, getinv=getinv, setinv=setinv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    inv <- x$getinv()
    
    if(!is.null(inv)) {
        message("Inverse cached")
        return(inv)
    }
        ## Return a matrix that is the inverse of 'x'
    m <- x$get()
    inv <- solve(m,...)
    
    x$setinv(inv)
    
    return(inv)
}
