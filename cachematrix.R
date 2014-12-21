## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse.

## The first function, makeCacheMatrix creates a special "matrix", which is really a list containing a function to
 

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    ## 1.set the value of the matrix
    set <- function(y){
        x <<- y
        m <<- NULL
    }
    ## 2.get the value of the matrix
    get <- funtion() x
    ## 3.set the value of the inverse of the matrix
    setinv <- function(solve) m <<- solve
    ## 4.get the value of the inverse of the matrix
    getinv <- function() m
    list(set = set,get = get,
         setinv = setinv,
         getinv = getinv)
                    

}


## Write a short comment describing this function
## cacheSolve: This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
## If the inverse has already been calculated (and the matrix has not changed), then the cachesolve should retrieve the inverse from the cache.
cacheSolve <- function(x, ...) {
    ##get value of inverse
    m <- x$getinv()
    if(!is.null(m)){
        ##if the cache is null
        message("getting cached data")
        return(m)
    }
    ##
    data <- x$get()
    m <- solve(data, ...)
    
    x$setinv(m)
    m
        ## Return a matrix that is the inverse of 'x'
}
