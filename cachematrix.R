## These functions  build a simple caching system for inverse matrix computation


## This fuction creates a matrix caching object based on a closure
makeCacheMatrix <- function(x = matrix()) {
        xInv <- NULL
        set <- function(y) {
                x <<- y
                xInv <<- NULL
        }
        get <- function() x
        setinv <- function(inv) xInv <<- inv
        getinv <- function() xInv
        list(
                 set = set
                ,get = get
                ,setinv = setinv
                ,getinv = getinv
        )
}

## This function actually takes the previously-created caching object as an argument
## and returns the inverse of the underlying matrix. The first time it is called
## it will actually compute the inverse. All subsequent calls will return the 
## cached version (assuming the matrix hasn't been modified in the meantime)
cacheSolve <- function(x, ...) {
        xInv <- x$getinv()
        if(!is.null(xInv)) {
                message("getting cached data")
                return(xInv)
        }
        data <- x$get()
        xInv <- solve(data)
        x$setinv(xInv)
        xInv
}